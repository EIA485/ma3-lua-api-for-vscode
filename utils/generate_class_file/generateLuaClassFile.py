from __future__ import annotations
import sys, json, os, re, inspect, time, builtins
from dataclasses import dataclass, field
from typing import Optional, List, Dict, Any, Tuple, Set, Tuple, Iterable, FrozenSet, Iterator
from collections import defaultdict, OrderedDict
from itertools import groupby
from operator import attrgetter
from functools import lru_cache
start = time.time()

_NAME_FILTER = re.compile(r'[^A-Za-z0-9_]')
def nameFilter(s: str | None) -> str:
    s = '' if s is None else _NAME_FILTER.sub('', str(s))
    return ('_' + s) if s[:1].isdigit() else (s or '_')

def loadJson(path: str):
    with open(path) as f:
       return json.load(f)


@dataclass(eq=False)
class Prop:
    ReadOnly: bool
    ImportIgnore: bool
    ExportIgnore: bool
    name: str
    type: Optional[str] = None
    TypeNameStr: Optional[str] = None
    Enum: Optional[str] = None
    default: Optional[str] = None
    description: Optional[str] = None


@dataclass(eq=False)
class ClassEntry:
    name: Optional[str]
    base: Optional[str] = None
    child: Optional[str] = None
    parent: Optional[str] = None
    description: Optional[str] = None
    properties: List[Prop] = field(default_factory=list)
    safeName: Optional[str] = None
    

def loadClassJson(path: str) -> Dict[str, ClassEntry]:
    prop_params = set(inspect.signature(Prop).parameters.keys())
    data = loadJson(path)
    return {
        k: ClassEntry(
            name=v.get("name"),
            base=v.get("base"),
            child=v.get("child"),
            parent=v.get("parent"),
            description=v.get("description"),
            properties=[
                Prop(**{x:(str(p[x]).replace(' ','') if x=="name" and p[x] is not None else p[x]) for x in p.keys()&prop_params})
                for p in v.get("properties", []) if isinstance(p, dict)
            ],
            safeName=nameFilter(v.get("name"))
        )
        for k, v in data.items()
    }

#some ai slop thats faster than my code
class ClassIndex:
    """
    Build once, then query. Provides:
      - inheritance adjacency (children_of/base_of)
      - memoized inheritance closures (descendants/ancestors)
      - memoized hierarchical children/parents (two-way filters)
      - generic-blacklist (name != safeName) for anchor covers
    """
    def __init__(self, data: Dict[str, ClassEntry]):
        self.data = data
        self.children_of: Dict[str, List[str]] = defaultdict(list)
        self.base_of: Dict[str, Optional[str]] = {}

        for cid, ce in data.items():
            # normalize self-inheritance to None
            b = ce.base if (ce.base and ce.base != cid) else None
            self.base_of[cid] = b
            if b:
                self.children_of[b].append(cid)

        # (optional but nice) dedupe + deterministic order
        for k, kids in list(self.children_of.items()):
            self.children_of[k] = sorted(set(kids))

        self.all_ids = set(data.keys())

        # anchors…
        anchors = set()
        for ce in data.values():
            if ce.child:  anchors.add(ce.child)
            if ce.parent: anchors.add(ce.parent)
        self.derived_from = {a: self._collect_derived_set(a) for a in anchors}

        self.classes_by_child_anchor: Dict[Optional[str], Set[str]] = defaultdict(set)
        for cid, ce in data.items():
            self.classes_by_child_anchor[ce.child].add(cid)

        self.blacklist_from_generic = {
            cid for cid, ce in data.items()
            if ce.name is not None and ce.safeName is not None and ce.name != ce.safeName
        }
    # ---------- inheritance closures ----------

    def _collect_derived_set(self, root: str) -> Set[str]:
        """All classes derived from `root` (including root if it exists)."""
        seen: Set[str] = set()
        stack: List[str] = [root]
        while stack:
            u = stack.pop()
            if u in seen: continue
            seen.add(u)
            for v in self.children_of.get(u, ()):
                if v not in seen:
                    stack.append(v)
        if root in self.all_ids:
            seen.add(root)
        return seen

    @lru_cache(maxsize=None)
    def descendants(self, cid: str) -> FrozenSet[str]:
        seen: set[str] = set()
        stack: list[str] = list(self.children_of.get(cid, ()))
        while stack:
            n = stack.pop()
            if n == cid or n in seen:
                continue
            seen.add(n)
            for ch in self.children_of.get(n, ()):
                if ch not in seen and ch != cid:
                    stack.append(ch)
        return frozenset(seen)

    @lru_cache(maxsize=None)
    def ancestors(self, cid: str) -> FrozenSet[str]:
        out: set[str] = set()
        seen: set[str] = set()
        p = self.base_of.get(cid)
        while p and p not in seen:
            seen.add(p)
            out.add(p)
            p = self.base_of.get(p)
        return frozenset(out)

    @lru_cache(maxsize=None)
    def is_derived_from(self, typ: str, anchor: str) -> bool:
        """True iff `typ ∈ derived_from(anchor)`."""
        s = self.derived_from.get(anchor)
        if s is None:
            s = self._collect_derived_set(anchor)
            self.derived_from[anchor] = s
        return typ in s

    # ---------- two-way hierarchical filters ----------

    @lru_cache(maxsize=None)
    def direct_children_by_filters(self, parent_id: str) -> FrozenSet[str]:
        """
        Direct hierarchical children C of parent_id such that:
          - parent.child is None or C ∈ derived_from(parent.child)
          - C.parent is None or parent_id ∈ derived_from(C.parent)
        """
        if parent_id not in self.data:
            return frozenset()

        p = self.data[parent_id]
        if p.child:
            s = self.derived_from.get(p.child)
            cand = set(s) if s is not None else self._collect_derived_set(p.child)
        else:
            cand = set(self.all_ids)
        cand.discard(parent_id)

        out = {
            c for c in cand
            if (c in self.data and
                (not self.data[c].parent or self.is_derived_from(parent_id, self.data[c].parent)))
        }
        return frozenset(out)

    @lru_cache(maxsize=None)
    def direct_parents_by_filters(self, child_id: str) -> FrozenSet[str]:
        """
        Direct hierarchical parents P of child_id such that:
          - child.parent is None or P ∈ derived_from(child.parent)
          - P.child is None or child_id ∈ derived_from(P.child)
        """
        if child_id not in self.data:
            return frozenset()

        c = self.data[child_id]
        if c.parent:
            s = self.derived_from.get(c.parent)
            cand = set(s) if s is not None else self._collect_derived_set(c.parent)
        else:
            cand = set(self.all_ids)
        cand.discard(child_id)

        out = {
            p for p in cand
            if (p in self.data and
                (not self.data[p].child or self.is_derived_from(child_id, self.data[p].child)))
        }
        return frozenset(out)

    @lru_cache(maxsize=None)
    def recursive_children_by_filters(self, parent_id: str) -> FrozenSet[str]:
        acc: Set[str] = set()
        stack = list(self.direct_children_by_filters(parent_id))
        while stack:
            u = stack.pop()
            if u in acc: continue
            acc.add(u)
            stack.extend(self.direct_children_by_filters(u))
        return frozenset(acc)

    @lru_cache(maxsize=None)
    def recursive_parents_by_filters(self, child_id: str) -> FrozenSet[str]:
        acc: Set[str] = set()
        stack = list(self.direct_parents_by_filters(child_id))
        while stack:
            u = stack.pop()
            if u in acc: continue
            acc.add(u)
            stack.extend(self.direct_parents_by_filters(u))
        return frozenset(acc)

    # ---------- diff vs base ----------

    def _effective_base(self, cid: str) -> Optional[str]:
        """Return usable base (None if no base/invalid/self)."""
        b = self.base_of.get(cid)
        if not b or b == cid or b not in self.data:
            return None
        return b

    def has_direct_children_changed_vs_base(self, cid: str) -> bool:
        b = self._effective_base(cid)
        if b is None:
            return True
        return self.direct_children_by_filters(cid) != self.direct_children_by_filters(b)

    def has_direct_parents_changed_vs_base(self, cid: str) -> bool:
        b = self._effective_base(cid)
        if b is None:
            return True
        return self.direct_parents_by_filters(cid) != self.direct_parents_by_filters(b)

    def has_recursive_children_changed_vs_base(self, cid: str) -> bool:
        b = self._effective_base(cid)
        if b is None:
            return True
        return self.recursive_children_by_filters(cid) != self.recursive_children_by_filters(b)

    def has_recursive_parents_changed_vs_base(self, cid: str) -> bool:
        b = self._effective_base(cid)
        if b is None:
            return True
        return self.recursive_parents_by_filters(cid) != self.recursive_parents_by_filters(b)

@lru_cache(maxsize=None)
def _unique_props_in_class(ce: ClassEntry) -> List[Prop]:
    """Return this class's properties, keeping only the first occurrence of each name (stable)."""
    if not ce or not ce.properties:
        return []
    out: List[Prop] = []
    seen: Set[str] = set()
    for p in ce.properties:
        if not p or p.name is None:
            continue
        if p.name in seen:
            continue
        seen.add(p.name)
        out.append(p)
    return out

def get_all_child_props(index: ClassIndex, parent_id: str, WriteableOnly: bool = True) -> List[Prop]:
    """
    All DIRECT hierarchical children’s properties (two-way filters applied).
    Order of children is deterministic: lexicographic by id.
    Within each child, properties are unique-by-name in declared order.
    """
    if parent_id not in index.data:
        return []
    props: List[Prop] = []
    for cid in sorted(index.direct_children_by_filters(parent_id)):
        ce = index.data.get(cid)
        if ce:
            props.extend(_unique_props_in_class(ce))
    if WriteableOnly:
        props = [prop for prop in props if not prop.ReadOnly]
    return props

def get_all_props_recursive(index: ClassIndex, parent_id: str, WriteableOnly: bool = True) -> List[Prop]:
    """
    All RECURSIVE hierarchical children’s properties (two-way filters applied).
    Children are ordered by the same stable DFS used elsewhere.
    """
    if parent_id not in index.data:
        return []
    subset = set([parent_id]) | set(index.recursive_children_by_filters(parent_id))
    ordered = [x for x in _dfs_order_subset(index, subset) if x != parent_id]

    props: List[Prop] = []
    for cid in ordered:
        ce = index.data.get(cid)
        if ce:
            props.extend(_unique_props_in_class(ce))
    if WriteableOnly:
        props = [prop for prop in props if not prop.ReadOnly]
    return props
    




# ---------------------------------------------------------------------
# Cover computation (minimal highest pure anchors + explicit extras)
#  - No manual blocks.
#  - Generic blacklist: classes with name != safeName are excluded from anchor coverage,
#    but if valid they still appear as explicit extras.
# ---------------------------------------------------------------------

def _closure(index: ClassIndex, u: str, cache: Dict[str, Set[str]]) -> Set[str]:
    """Descendants by inheritance; include self if concrete; support pseudo-anchors."""
    if u in cache:
        return cache[u]
    if u in index.all_ids:
        s = index.descendants(u) | {u}
    else:
        # pseudo-anchor (not a concrete class id) → union of all subtree classes
        s = set(index.children_of.get(u, ()))
        stack = list(s)
        while stack:
            w = stack.pop()
            for v in index.children_of.get(w, ()):
                if v not in s:
                    s.add(v); stack.append(v)
    cache[u] = s
    return s

def _most_permissive_cover_given_A(index: ClassIndex, A: Set[str]
    ) -> Tuple[Set[str], Set[str], Dict[str, Set[str]]]:
    """
    Highest pure anchors (Desc(u) ⊆ A) whose base is not pure; plus explicit = A \ ⋃Desc(anchors).
    Returns (anchors, explicit, coverage_by_anchor).
    """
    cand: Set[str] = set(index.all_ids) | set(index.children_of.keys())
    pure: Dict[str, bool] = {}
    cov: Dict[str, Set[str]] = {}
    cache: Dict[str, Set[str]] = {}

    for u in cand:
        du = _closure(index, u, cache)
        pure[u] = (len(du) == 0) or du.issubset(A)
        cov[u] = du & A

    anchors: Set[str] = set()
    for u in cand:
        if not pure.get(u, False): continue
        base = index.base_of.get(u)
        if not base or not pure.get(base, False):
            if cov[u]:
                anchors.add(u)

    covered = set().union(*(cov[u] for u in anchors)) if anchors else set()
    explicit = A - covered
    return anchors, explicit, {u: cov[u] for u in anchors}

def _allowed_children_universe(index: ClassIndex, parent_id: str) -> Set[str]:
    A: Set[str] = set()
    if parent_id not in index.data:
        return A
    p = index.data[parent_id]
    if p.child:
        s = index.derived_from.get(p.child)
        cand = set(s) if s is not None else index._collect_derived_set(p.child)
    else:
        cand = set(index.all_ids)
    cand.discard(parent_id)
    for cid in cand:
        c = index.data.get(cid)
        if not c:
            continue
        if c.parent and not index.is_derived_from(parent_id, c.parent):
            continue
        A.add(cid)
    return A  # <- GUARANTEED

def _dfs_order_subset(index: ClassIndex, subset) -> list[str]:
    """
    Deterministic DFS over 'subset' using inheritance edges.
    - Accepts any iterable; coerces to a set internally.
    - Roots = nodes whose base is not in subset (or no base).
    - Children visited in lexicographic order for reproducibility.
    - Iterative & cycle-safe.
    """
    # Coerce to set, handle None
    if not subset:
        return []
    subset = set(subset)

    # Filtered, sorted adjacency
    children = {
        k: sorted([c for c in index.children_of.get(k, ()) if c in subset])
        for k in subset
    }
    # Roots (sorted for determinism)
    roots = sorted([k for k in subset if not index.base_of.get(k) or index.base_of.get(k) not in subset])

    seen: set[str] = set()
    order: list[str] = []

    def visit(start: str) -> None:
        stack = [start]
        while stack:
            n = stack.pop()
            if n in seen:
                continue
            seen.add(n)
            order.append(n)
            # push in reverse so the smallest child comes out first
            for c in reversed(children.get(n, ())):
                if c not in seen:
                    stack.append(c)

    for r in roots:
        if r not in seen:
            visit(r)

    # Any leftover disconnected nodes inside the subset (sorted for determinism)
    for k in sorted(subset):
        if k not in seen:
            visit(k)

    return order

def get_cover_for_children(index: ClassIndex, parent_id: str) -> Dict[str, Any]:
    """
    Smallest set of highest-pure anchors + explicit extras for *direct* hierarchical children.
    Returns lists ordered by DFS over A_full (deterministic).
    """
    # 1) Valid universe (two-way filters)
    A_full: Set[str] = _allowed_children_universe(index, parent_id)

    # 2) Apply generic blacklist ONLY for anchor selection
    A_generic: Set[str] = A_full - (index.blacklist_from_generic & A_full)

    # 3) Compute anchors over A_generic (sets)
    anchors_set, _explicit_generic_unused, coverage_by_anchor_sets = _most_permissive_cover_given_A(index, A_generic)

    # 4) Union coverage from anchors
    covered_union: Set[str] = set().union(*(coverage_by_anchor_sets[a] for a in anchors_set)) if anchors_set else set()

    # 5) Explicit = A_full \ covered_union  (includes generically-blacklisted)
    explicit_set: Set[str] = A_full - covered_union

    # 6) Stable DFS order over the universe
    dfs_order = _dfs_order_subset(index, A_full)
    pos = {k: i for i, k in enumerate(dfs_order)}
    BIG = 10**9
    order_key = lambda x: (pos.get(x, BIG), x)

    # 7) Order anchors by earliest coverage position (tie-break by id)
    def anchor_key(a: str) -> Tuple[int, str]:
        first_pos = min((pos.get(x, BIG) for x in coverage_by_anchor_sets.get(a, ())), default=BIG)
        return (first_pos, a)

    anchors_ordered: List[str] = sorted(anchors_set, key=anchor_key)

    # 8) Order outputs
    explicit_ordered: List[str] = sorted(explicit_set, key=order_key)
    A_full_ordered: List[str] = sorted(A_full, key=order_key)
    A_generic_ordered: List[str] = sorted(A_generic, key=order_key)
    coverage_by_anchor_ordered: Dict[str, List[str]] = {
        a: sorted(coverage_by_anchor_sets[a], key=order_key) for a in anchors_ordered
    }

    return {
        "parent": parent_id,
        "anchors": anchors_ordered,
        "explicit": explicit_ordered,
        "A_full": A_full_ordered,
        "A_generic": A_generic_ordered,
        "coverage_by_anchor": coverage_by_anchor_ordered,
    }


def _allowed_recursive_children_universe(index: ClassIndex, parent_id: str) -> Set[str]:
    """All valid recursive hierarchical children of `parent_id` (exclude self)."""
    if parent_id not in index.data:
        return set()
    A = set(index.recursive_children_by_filters(parent_id))
    A.discard(parent_id)
    return A


def get_cover_for_recursive_children(index: ClassIndex, parent_id: str) -> Dict[str, Any]:
    """
    Smallest set of highest-pure anchors + explicit extras for *recursive* hierarchical children.
    Returns lists ordered by DFS over A_full (deterministic).
    """
    # 1) Valid recursive universe
    A_full: Set[str] = _allowed_recursive_children_universe(index, parent_id)

    # 2) Generic blacklist only affects anchor selection
    A_generic: Set[str] = A_full - (index.blacklist_from_generic & A_full)

    # 3) Anchors over A_generic
    anchors_set, _explicit_generic_unused, coverage_by_anchor_sets = _most_permissive_cover_given_A(index, A_generic)

    # 4) Explicit = A_full minus union(coverage)
    covered_union: Set[str] = set().union(*(coverage_by_anchor_sets[a] for a in anchors_set)) if anchors_set else set()
    explicit_set: Set[str] = A_full - covered_union

    # 5) Deterministic DFS order
    dfs_order = _dfs_order_subset(index, A_full)
    pos = {k: i for i, k in enumerate(dfs_order)}
    BIG = 10**9
    order_key = lambda x: (pos.get(x, BIG), x)

    def anchor_key(a: str) -> Tuple[int, str]:
        first_pos = min((pos.get(x, BIG) for x in coverage_by_anchor_sets.get(a, ())), default=BIG)
        return (first_pos, a)

    anchors_ordered: List[str] = sorted(anchors_set, key=anchor_key)
    explicit_ordered: List[str] = sorted(explicit_set, key=order_key)
    A_full_ordered: List[str] = sorted(A_full, key=order_key)
    A_generic_ordered: List[str] = sorted(A_generic, key=order_key)
    coverage_by_anchor_ordered: Dict[str, List[str]] = {
        a: sorted(coverage_by_anchor_sets[a], key=order_key) for a in anchors_ordered
    }

    return {
        "parent": parent_id,
        "anchors": anchors_ordered,
        "explicit": explicit_ordered,
        "A_full": A_full_ordered,
        "A_generic": A_generic_ordered,
        "coverage_by_anchor": coverage_by_anchor_ordered,
    }

def _allowed_recursive_parents_universe(index: ClassIndex, child_id: str) -> Set[str]:
    """All valid recursive hierarchical parents of `child_id` (exclude self)."""
    if child_id not in index.data:
        return set()
    P = set(index.recursive_parents_by_filters(child_id))
    P.discard(child_id)
    return P

def get_cover_for_recursive_parents(index: ClassIndex, child_id: str) -> Dict[str, Any]:
    """
    Smallest set of highest-pure anchors + explicit extras for *recursive* hierarchical parents.
    Returns lists ordered by DFS over A_full (deterministic). DFS is over inheritance
    restricted to A_full; that gives a stable, readable order.
    """
    # 1) Valid recursive universe (parents)
    A_full: Set[str] = _allowed_recursive_parents_universe(index, child_id)

    # 2) Apply generic blacklist only for anchor selection
    A_generic: Set[str] = A_full - (index.blacklist_from_generic & A_full)

    # 3) Anchors over A_generic (same definition: highest pure by inheritance)
    anchors_set, _explicit_generic_unused, coverage_by_anchor_sets = _most_permissive_cover_given_A(index, A_generic)

    # 4) Explicit = A_full \ covered
    covered_union: Set[str] = set().union(*(coverage_by_anchor_sets[a] for a in anchors_set)) if anchors_set else set()
    explicit_set: Set[str] = A_full - covered_union

    # 5) Deterministic DFS order over the parents universe
    dfs_order = _dfs_order_subset(index, A_full)
    pos = {k: i for i, k in enumerate(dfs_order)}
    BIG = 10**9
    order_key = lambda x: (pos.get(x, BIG), x)

    def anchor_key(a: str) -> Tuple[int, str]:
        first_pos = min((pos.get(x, BIG) for x in coverage_by_anchor_sets.get(a, ())), default=BIG)
        return (first_pos, a)

    anchors_ordered: List[str] = sorted(anchors_set, key=anchor_key)
    explicit_ordered: List[str] = sorted(explicit_set, key=order_key)
    A_full_ordered: List[str] = sorted(A_full, key=order_key)
    A_generic_ordered: List[str] = sorted(A_generic, key=order_key)
    coverage_by_anchor_ordered: Dict[str, List[str]] = {
        a: sorted(coverage_by_anchor_sets[a], key=order_key) for a in anchors_ordered
    }

    return {
        "child": child_id,
        "anchors": anchors_ordered,
        "explicit": explicit_ordered,
        "A_full": A_full_ordered,
        "A_generic": A_generic_ordered,
        "coverage_by_anchor": coverage_by_anchor_ordered,
    }

    """
    Compute the smallest set of highest pure anchors + explicit extras
    for ALL recursive hierarchical children of `parent_id`.

    Returns:
      {
        "parent": parent_id,
        "anchors": set[str],                # generic “derived from …” anchors
        "explicit": set[str],               # valid-but-not-covered (incl. generic-blacklisted)
        "A_full": set[str],                 # all recursive valid children
        "A_generic": set[str],              # A_full minus generic-blacklisted
        "coverage_by_anchor": {anchor: set[str]},
      }
    """
    # 1) Valid recursive children (two-way filter)
    A_full = _allowed_recursive_children_universe(index, parent_id)

    # 2) Apply generic blacklist for anchor selection only
    A_generic = A_full - (index.blacklist_from_generic & A_full)

    # 3) Pick highest pure anchors over A_generic
    anchors, _explicit_generic, coverage_by_anchor = _most_permissive_cover_given_A(index, A_generic)

    # 4) Anything not covered by anchors is explicit
    covered_union = set().union(*(coverage_by_anchor[a] for a in anchors)) if anchors else set()
    explicit_all = A_full - covered_union

    return {
        "parent": parent_id,
        "anchors": anchors,
        "explicit": explicit_all,
        "A_full": A_full,
        "A_generic": A_generic,
        "coverage_by_anchor": coverage_by_anchor,
    }

# ---------------------------------------------------------------------
# Optimized order/merge (preserves your semantics)
# ---------------------------------------------------------------------

def orderFilter(index: ClassIndex,
                     subset: Optional[Iterable[str]] = None,
                     use_hierarchical_filters: bool = False) -> Iterator[Tuple[str, ClassEntry]]:
    """
    Emit (representative_key, merged_entry) in stable DFS order.

    Graph:
      - use_hierarchical_filters=False (default): DFS over inheritance edges.
      - True: DFS over hierarchical direct children (two-way filtered).

    Grouping & merge (matches your original logic):
      - Group by (entry.name or id).
      - Representative = earliest in DFS order for the group.
      - Richest (most properties) supplies base/child/parent/description/safeName.
      - Properties merged by first occurrence of property name across group (stable).
      - base/child/parent rewritten through representative map.
    """
    # Working set
    if subset is None:
        d: Dict[str, ClassEntry] = index.data
        present = set(d.keys())
    else:
        present = set(subset)
        d = {k: index.data[k] for k in present}

    # Adjacency to walk
    if not use_hierarchical_filters:
        children = {k: [c for c in index.children_of.get(k, ()) if c in present]
                    for k in present}
    else:
        children = {k: [c for c in index.direct_children_by_filters(k) if c in present]
                    for k in present}

    # Roots: no base or base==self or base not in present
    roots: List[str] = []
    for k, v in d.items():
        b = v.base
        if not b or b == k or b not in present:
            roots.append(k)

    # Iterative DFS
    seen: Set[str] = set()
    order: List[str] = []
    for r in roots:
        if r in seen: continue
        stack = [r]
        while stack:
            n = stack.pop()
            if n in seen: continue
            seen.add(n)
            order.append(n)
            cs = children.get(n, ())
            for c in reversed(cs):
                if c not in seen:
                    stack.append(c)

    # Disconnected nodes
    for k in present:
        if k in seen: continue
        stack = [k]
        while stack:
            n = stack.pop()
            if n in seen: continue
            seen.add(n)
            order.append(n)
            cs = children.get(n, ())
            for c in reversed(cs):
                if c not in seen:
                    stack.append(c)

    # Position map for representative selection
    pos = {k: i for i, k in enumerate(order)}

    # Group by (name or id)
    groups = defaultdict(list)
    for k, v in d.items():
        groups[v.name or k].append(k)

    # Representative & merge
    ref: Dict[str, str] = {}
    merged: Dict[str, ClassEntry] = {}

    for ks in groups.values():
        rk = min(ks, key=lambda x: pos.get(x, 10**9))                 # earliest in DFS
        bk = max(ks, key=lambda x: len(d[x].properties or []))        # richest by props

        props = list(OrderedDict(
            (p.name, p) for kk in ks for p in (d[kk].properties or [])
        ).values())

        if d[bk].description is not None:
            desc = d[bk].description
        else:
            desc = next((d[kk].description for kk in ks if d[kk].description is not None), None)

        merged[rk] = ClassEntry(
            name=d[rk].name,
            base=d[bk].base,
            child=d[bk].child,
            parent=d[bk].parent,
            description=desc,
            properties=props,
            safeName=d[bk].safeName
        )
        for kk in ks:
            ref[kk] = rk

    # Rewrite relations through representative map
    merged = {
        k: ClassEntry(
            name=v.name,
            base=ref.get(v.base, v.base),
            child=ref.get(v.child, v.child),
            parent=ref.get(v.parent, v.parent),
            description=v.description,
            properties=v.properties,
            safeName=v.safeName
        )
        for k, v in merged.items()
    }

    # Emit in DFS order (one per representative)
    emitted: Set[str] = set()
    for k in order:
        rk = ref[k]
        if rk in emitted: continue
        emitted.add(rk)
        yield rk, merged[rk]

# ---------------------------------------------------------------------
# Convenience wrappers
# ---------------------------------------------------------------------

def build_index(data: Dict[str, ClassEntry]) -> ClassIndex:
    """Factory: build and return a ClassIndex."""
    return ClassIndex(data)

def get_children(index: ClassIndex, cid: str) -> Dict[str, List[str]]:
    """Deterministic child listings."""
    inh_direct = sorted(index.children_of.get(cid, ()))
    inh_recursive = _dfs_order_subset(index, set([cid]) | set(index.descendants(cid)))  # puts cid first; drop it
    inh_recursive = [x for x in inh_recursive if x != cid]

    hier_direct = sorted(index.direct_children_by_filters(cid))
    # recursive hierarchical: DFS over that subset
    hier_subset = set([cid]) | set(index.recursive_children_by_filters(cid))
    hier_recursive = [x for x in _dfs_order_subset(index, hier_subset) if x != cid]

    return {
        "direct_inheritance": inh_direct,
        "recursive_inheritance": inh_recursive,
        "direct_hierarchical": hier_direct,
        "recursive_hierarchical": hier_recursive,
    }

def get_parents(index: ClassIndex, cid: str) -> Dict[str, List[str]]:
    """Deterministic parent listings."""
    # inheritance
    inh_direct = [index.base_of.get(cid)] if index.base_of.get(cid) else []
    inh_recursive = list(sorted(index.ancestors(cid)))  # top-down order isn't unique; sorted is deterministic

    # hierarchical
    hier_direct = list(sorted(index.direct_parents_by_filters(cid)))
    hier_recursive = list(sorted(index.recursive_parents_by_filters(cid)))

    return {
        "direct_inheritance": inh_direct,
        "recursive_inheritance": inh_recursive,
        "direct_hierarchical": hier_direct,
        "recursive_hierarchical": hier_recursive,
    }

def ConcatPropNames(props: list[Prop]) -> str:
    return "|".join(f'"{prop.name}"' for prop in props if prop.name)

def ConcatPropTypeStrs(props: list[str]) -> str:
    return "|".join(prop for prop in props if prop)

def SortedAtoB(A: list, B: list, Aatt: function, Batt: function=str):
    key = lambda p:str(Aatt(p) or '')
    step1 = [([i for i in sorted(B[p] for p in plist)], plist) for plist in
                    [list(props) for _,props in groupby(sorted(A,key=key), key=key)]]
    return [(map(Batt,b), a) for b, a in sorted(step1, key = lambda i: i[0][0])]

def splitPropsToArgTypeGroups(props):
    byRet: Dict[str, set[Prop]] = {sk: set(g) for sk, g in groupby(sorted(props, key=lambda p: p.type), key=lambda p: p.type)}
    byArg: Dict[str, set[str]] = {}
    while True:
        singleArg = set(next(iter(grp)) for _, grp in byRet.items() if len(grp) == 1)
        for arg in singleArg:
            name = arg.name
            if not name in byArg.keys():
                byArg[name] = {arg.type}
            else:    
                byArg[name].add(arg.type)
        
        contFlag = False
        for sk, group in byRet.items():
            byRet[sk] = {prop for prop in group if not prop.name in singleArg}
            if len(byRet[sk]) < len(group): contFlag = True

        if not contFlag: break

    byRet = {t: ps for t, ps in byRet.items() if len(ps)>0}
    return byArg.items(), byRet


data = loadClassJson(sys.argv[1])
index = build_index(data)

@lru_cache(maxsize=None)
def get_all_properties(index: ClassIndex, cid: str) -> List[Prop]:
    """
    Global order:
      base (original order, minus later overrides)
      → derived1 (original order, minus later overrides)
      → derived2 (original order, minus later overrides)
      → ...
      → cid (original order)

    When a derived class overrides a property, it is removed from whatever was
    accumulated so far and re-inserted at the position it naturally has inside
    that derived class's own property list.
    """
    if cid not in index.data:
        return []

    # lineage: base → ... → cid
    lineage: List[str] = []
    seen: Set[str] = set()
    cur = cid
    while cur and cur not in seen and cur in index.data:
        seen.add(cur)
        lineage.append(cur)
        cur = index.base_of.get(cur)
    lineage.reverse()

    result: List[Prop] = []
    by_name: Dict[str, int] = {}

    for cls_id in lineage:
        ce = index.data.get(cls_id)
        if not ce or not ce.properties:
            continue

        # Keep first occurrence within this class, preserve its list order.
        class_props: List[Prop] = []
        seen_in_class: Set[str] = set()
        for p in ce.properties:
            if not p or p.name is None:
                continue
            if p.name in seen_in_class:
                continue
            seen_in_class.add(p.name)
            class_props.append(p)

        # Remove overrides from whatever we've already accumulated
        to_remove_positions = sorted(
            (by_name[name] for name in seen_in_class if name in by_name),
            reverse=True
        )
        if to_remove_positions:
            for pos in to_remove_positions:
                result.pop(pos)
            # Rebuild index since positions shifted
            by_name.clear()
            for i, rp in enumerate(result):
                if rp.name is not None:
                    by_name[rp.name] = i

        # Append this class's props in their *own* order
        for p in class_props:
            by_name[p.name] = len(result)
            result.append(p)

    return result

def GetClassInheritanceTreeString(root: str) -> str:
    path = []
    seen = set()
    cur = root
    while cur and cur not in seen and cur in data:
        seen.add(cur)
        path.append(data[cur].name or cur)
        cur = data[cur].base
    path = list(reversed(path))
    if len(path) > 1:
        path = path[1:]
    return os.sep.join(path)

def notParentSameOnBase(klass:ClassEntry): 
    return data[klass.base].parent != klass.parent

def notChildSameOnBase(klass:ClassEntry): 
    return data[klass.base].child != klass.child

outstr = [""]

def append(str):
    outstr.append(str)
def removeChars(count):
    outstr[-1] = outstr[-1][:-count]


for k,v in orderFilter(index):
    outstr = [""]
    append("---@meta\n")
    append("\n")

    append(f"---@class {v.safeName}")
    HasBase = v.base != k
    if HasBase:
        append(f": {data[v.base].safeName}")
    if v.description: 
        if not HasBase:
            append(f" @{v.description}")
        else:
            append(f" {v.description}")
    append('\n')
    
    for p in v.properties:
        append(f"---@field {str(p.name)} {p.type}")
        if p.description: append(f" {p.description}")
        append('\n')
    append(f"local {v.safeName} = {'{'}\n")
    foundDefault = False
    for p in v.properties:
        if p.default:
            foundDefault = True
            append("    ")
            braket = re.search(r"[^A-Za-z_0-9]",str(p.name))
            if braket: append('["')
            append(str(p.name))
            if braket: append('"]')
            append(f"=\"{p.default}\",\n")
    if foundDefault:
        removeChars(2) #trailing comma
        append('\n')
    else:
        removeChars(1) #newline
    append("}\n")


    append(f"---@return \"{v.name}\"\n")
    append(f"function {v.safeName}:GetClass() end\n")

    append(f"---@return \"{data[v.child].name}\"\n")
    append(f"function {v.safeName}:GetChildClass() end\n")

    # improve once emmy lua issue #712 is resolved
    append(f"---@generic T : {v.safeName}\n")
    append("---@param class `T`\n")
    append("---@return boolean\n")
    append(f"function {v.safeName}:IsClass(class) end\n")

    if notParentSameOnBase(v):
        if v.name == 'Root':
            append("---@return nil\n") # Root is the only Class that has no parent
        else:
            append(f"---@return {data[v.parent].safeName}\n")
        append(f"function {v.safeName}:Parent() end\n")
    
    if notChildSameOnBase(v):
        append(f"---@param index integer\n")
        append(f"---@return {data[v.child].safeName}\n")
        append(f"function {v.safeName}:Ptr(index) end\n")

        append(f"---@return {data[v.child].safeName}[]\n")
        append(f"function {v.safeName}:Children() end\n")

        append(f"---@return {data[v.child].safeName}?\n")
        append(f"function {v.safeName}:CurrentChild() end\n")
        
    if len(v.properties)>0:
        allProps = get_all_properties(index, k)
        append(f"---@return {len(allProps)}\n")
        append(f"function {v.safeName}:PropertyCount() end\n")
        
        for idx, prop in enumerate(allProps):
            append(f"---@overload fun(idx: {idx}): \"{prop.name}\"\n")
        append(f"function {v.safeName}:PropertyName(idx) end\n")

        propindices = {p: i for i, p in enumerate(allProps)}

        for idxs, props in SortedAtoB(allProps, propindices, lambda p: (p.Enum, p.ReadOnly, p.ImportIgnore, p.ExportIgnore)):
                append(f"---@overload fun(idx: {'|'.join(map(str, idxs))}): {{ExportIgnore: {str(props[0].ExportIgnore)}{(', EnumCollection: '+props[0].Enum)if props[0].Enum else ''}, ReadOnly: {str(props[0].ReadOnly)}, ImportIgnore: {str(props[0].ImportIgnore)}}}\n")
        append(f"function {v.safeName}:PropertyInfo(idx) end\n")

        for idxs, props in SortedAtoB(allProps, propindices, attrgetter("TypeNameStr")):
                append(f"---@overload fun(idx: {'|'.join(idxs)}): \"{props[0].TypeNameStr}\"\n")
        append(f"function {v.safeName}:PropertyType(idx) end\n")
    
    if len(v.properties)>0 or notChildSameOnBase(v):
        if len(v.properties)>0:
            for _, props in groupby(sorted(allProps, key=lambda p: p.type), key=lambda p: p.type):
                props = list(props)
                append(f"---@overload fun(name: {ConcatPropNames(props)}, role: nil): {props[0].type}\n")
            append(f"---@overload fun(name: {ConcatPropNames(allProps)}, role: Enums.Roles): string\n")
        append(f"---@overload fun(name: integer, role: nil): {data[v.child].safeName}\n")
        append(f"function {v.safeName}:Get(name, role) end\n")

    childChange = index.has_direct_children_changed_vs_base(k)
    if childChange:
        childClasses = get_cover_for_children(index, k)
        anchors = '|'.join(data[id].name for id in childClasses['anchors'])
        for func in ["Create","Append","Acquire", "Aquire!", "Insert", "Find"]:
            hasIndex = func in ["Insert", "Create"]
            hasCount = func in ["Append", "Insert"]

            if len(childClasses["anchors"]) > 0:
                append(f"---@generic T : {anchors}\n")
                if hasIndex: append("---@param index integer\n")
                append("---@param class `T`\n")
                append("---@param undo Undo?\n")
                if hasCount: append("---@param count integer?\n")
                append("---@return T\n")

            sigPre = "index: integer, " if hasIndex else ""
            sigPost = ", count: integer?" if hasCount else ""

            for id in childClasses["explicit"]:
                append(f"---@overload fun({sigPre}class: \"{data[id].name}\", undo: Undo?{sigPost}): {data[id].safeName}\n")
            if v.child in childClasses["A_full"]:
                append(f"---@overload fun({sigPre}class: nil, undo: Undo?{sigPost}): {data[v.child].safeName}\n")
            if func.endswith("!"):
                append('---@deprecated use "Acquire" instead\n')
            append(f"function {v.safeName}:{func[:-1] if func.endswith('!') else func}({'index, ' if hasIndex else ''}class, undo{', count' if hasCount else ''}) end\n")

    recChildChange = index.has_recursive_children_changed_vs_base(k)
    if recChildChange:  
        recChildClasses = get_cover_for_recursive_children(index, k)
        if len(recChildClasses["A_full"])>0:
            if len(recChildClasses["anchors"]) > 0:
                append(f"---@generic T : {'|'.join(data[id].name for id in recChildClasses['anchors'])}\n")
                append("---@param name string\n")
                append("---@param class `T`\n")
                append("---@return T\n")
            for id in recChildClasses["explicit"]:
                append(f"---@overload fun(name: string, class: \"{data[id].name}\"): {data[id].safeName}\n")
            append("---@overload fun(name: string, class: nil): Object\n")
            append(f"function {v.safeName}:FindRecursive(name, class) end\n")

    if index.has_recursive_parents_changed_vs_base(k):  
        recParentClasses = get_cover_for_recursive_parents(index, k)
        if len(recParentClasses["A_full"])>0:
            if len(recParentClasses["anchors"]) > 0:
                append(f"---@generic T : {'|'.join(data[id].name for id in recParentClasses['anchors'])}\n")
                append("---@param class `T`\n")
                append("---@return T\n")
            for id in recParentClasses["explicit"]:
                append(f"---@overload fun(class: \"{data[id].name}\"): {data[id].safeName}\n")
            append(f"function {v.safeName}:FindParent(class) end\n")

    if len(v.properties)>0:
        for _, props in groupby(sorted([prop for prop in allProps if not prop.ReadOnly], key=lambda p: p.type), key=lambda p: p.type):
            props = list(props)
            append(f"---@overload fun(property_name: {ConcatPropNames(props)}, property_value: {props[0].type}, override_change_level: ChangeLevel?)\n")
        append(f"function {v.safeName}:Set(property_name, property_value, override_change_level) end\n")

    propGroups: dict[str, List[Prop]] = {}
    if childChange:
        propGroups["SetChildren"] = get_all_child_props(index, k)
    if recChildChange:
        propGroups["SetChildrenRecursive"] = get_all_props_recursive(index, k)
    
    for func, props in propGroups.items():
        byArg, byRet = splitPropsToArgTypeGroups(props)

        for name, props in byArg:
            append(f"---@overload fun(property_name: \"{name}\", property_value: {ConcatPropTypeStrs(props)})\n")

        for type,props in byRet.items():
            append(f"---@overload fun(property_name: {ConcatPropNames(props)}, property_value: {type})\n")

        append(f"function {v.safeName}:{name}(property_name, property_value) end\n")

        
    if recChildChange:
        for _, props in groupby(sorted(get_all_props_recursive(index, k), key=lambda p: p.type or ""), key=lambda p: p.type):
            props = list(props)
            append(f"---@overload fun(property_name: {ConcatPropNames(props)}, property_value: {props[0].type})\n")
        append(f"function {v.safeName}:SetChildrenRecursive(property_name, property_value) end\n")




    path = os.path.join("GeneratedClasses", GetClassInheritanceTreeString(k)) + '.lua'
    os.makedirs(os.path.dirname(path), exist_ok=True)
    print(path)
    outstr[-1] = outstr[-1].rstrip()
    with open(path, 'w') as f:
        f.write(''.join(outstr))

end = time.time()
print(f"Took {end - start:.3f} seconds")