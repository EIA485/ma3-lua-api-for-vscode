from __future__ import annotations
import json, os, re, sys, difflib
from typing import List, Dict, Any, Optional, Tuple

# ---------------- IO ----------------

def read_json(path: str) -> Dict[str, Any]:
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)

def write_json(path: str, data: Dict[str, Any]) -> None:
    with open(path, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2, ensure_ascii=False)

def read_enum_lines(script_dir: str) -> List[str]:
    p = os.path.join(script_dir, "EnumNamePerLine.txt")
    lines: List[str] = []
    try:
        with open(p, "r", encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if line:
                    lines.append(line)
    except Exception as e:
        print(f"[!] Could not read EnumNamePerLine.txt: {e}")
    return lines

# ---------------- helpers ----------------

def split_top_level(s: str) -> List[str]:
    out, cur, a_depth, p_depth = [], [], 0, 0
    for ch in s:
        if ch == '<': a_depth += 1; cur.append(ch)
        elif ch == '>': a_depth -= 1; cur.append(ch)
        elif ch == '(': p_depth += 1; cur.append(ch)
        elif ch == ')': p_depth -= 1; cur.append(ch)
        elif ch == ',' and a_depth == 0 and p_depth == 0:
            out.append(''.join(cur).strip()); cur = []
        else: cur.append(ch)
    if cur: out.append(''.join(cur).strip())
    return out

def split_top_level_all(s: str) -> List[str]:
    out, cur = [], []
    a_depth = p_depth = b_depth = 0
    for ch in s:
        if ch == '<': a_depth += 1; cur.append(ch)
        elif ch == '>': a_depth -= 1; cur.append(ch)
        elif ch == '(' : p_depth += 1; cur.append(ch)
        elif ch == ')' : p_depth -= 1; cur.append(ch)
        elif ch == '{' : b_depth += 1; cur.append(ch)
        elif ch == '}' : b_depth -= 1; cur.append(ch)
        elif ch == ',' and a_depth == 0 and p_depth == 0 and b_depth == 0:
            out.append(''.join(cur).strip()); cur = []
        else: cur.append(ch)
    if cur: out.append(''.join(cur).strip())
    return out

def strip_cv_class_enum(s: str) -> str:
    s = s.strip()
    for kw in ("class ", "struct ", "enum ", "const ", "volatile "):
        if s.startswith(kw):
            s = s[len(kw):]
    return s.strip()

def _strip_ptr_ref_qual(s: str) -> str:
    s = s.replace("__ptr64", " ")
    s = re.sub(r'[\*\&]+', ' ', s)
    s = re.sub(r'\s+', ' ', s).strip()
    return s

# ---------------- enum / token lookups ----------------

def _norm(s: str) -> str:
    return re.sub(r'[^a-z0-9]', '', s.lower())

def _subseq_count_greedy(a: str, b: str) -> int:
    j = 0
    cnt = 0
    for ch in b:
        if j < len(a) and a[j] == ch:
            j += 1
            cnt += 1
    return cnt

def _best_subseq_fraction(a: str, b: str) -> float:
    if not a or not b: return 0.0
    best = 0
    for i in range(len(a)):
        c = _subseq_count_greedy(a[i:], b)
        if c > best: best = c
    return best / len(a)

def _fuzzy_best_match(key: str, candidates: List[str], min_ratio: float = 0.68) -> Optional[str]:
    k = _norm(key)
    best, best_score = None, 0.0
    best_len_delta = None
    for cand in candidates:
        c = _norm(cand)
        if not c: continue
        s1 = _best_subseq_fraction(k, c)
        s2 = _best_subseq_fraction(c, k)
        score = 0.5 * (s1 + s2)
        if k and c and k[0] == c[0]: score += 0.05
        if k and c and k[-1] == c[-1]: score += 0.05
        length_gap = abs(len(k) - len(c)) / max(len(k), len(c))
        score -= 0.10 * length_gap
        if score > best_score:
            best_score, best = score, cand
            best_len_delta = abs(len(k) - len(c))
        elif abs(score - best_score) <= 1e-9:
            delta = abs(len(k) - len(c))
            if best_len_delta is None or delta < best_len_delta:
                best, best_len_delta = cand, delta
    return best if best and best_score >= min_ratio else None

def lookup_enum_name(enum_token_last: str, enum_lines: List[str]) -> str:
    overrides = {"Branch":"BuildType", "KeyCodes":"SCVirtualKeyCode"}
    key = enum_token_last
    if key in overrides: return overrides[key]
    for k,v in overrides.items():
        if k.lower() == key.lower(): return v

    if not enum_lines: return f"cant find {key} in file"

    for line in enum_lines:
        if line == key: return line
    for line in enum_lines:
        if line.lower() == key.lower(): return line
    for line in enum_lines:
        if line.lower().endswith(key.lower()): return line
    for line in enum_lines:
        if key.lower().endswith(line.lower()): return line
    best = _fuzzy_best_match(key, enum_lines)
    return best if best else f"cant find {key} in file"

def lookup_handle_target_name(arg_token: str, class_token_map: Dict[str,str]) -> str:
    token = strip_cv_class_enum(arg_token.strip())
    if token in class_token_map: return class_token_map[token]
    leaf = token.split("::")[-1]
    for k, v in class_token_map.items():
        if k.split("::")[-1] == leaf:
            return v
    return f"cant find {token} in class_token_map"

def lookup_class_token_optional(arg_token: str, class_token_map: Dict[str,str]) -> Optional[str]:
    if not arg_token: return None
    token = strip_cv_class_enum(_strip_ptr_ref_qual(arg_token)).strip()
    if not token: return None
    if token in class_token_map: return class_token_map[token]
    leaf = token.split("::")[-1]
    for k, v in class_token_map.items():
        if k.split("::")[-1] == leaf:
            return v
    return None

# ---------------- normalization ----------------

def is_integer_primitive(inner: str) -> bool:
    s = _strip_ptr_ref_qual(inner)
    s = strip_cv_class_enum(s)
    s = re.sub(r'\b(unsigned|signed)\b', '', s).strip()
    s = re.sub(r'\s+', ' ', s)
    return s in {"char", "short", "int", "__int64"}

def is_number_primitive(inner: str) -> bool:
    s = _strip_ptr_ref_qual(inner)
    s = strip_cv_class_enum(s)
    s = re.sub(r'\b(unsigned|signed)\b', '', s).strip()
    s = re.sub(r'\s+', ' ', s)
    return s in {"float", "double"}

def _maybe_enum_without_prefix(token: str, enum_lines: List[str]) -> str:
    if not token or "::" not in token: return token
    last = token.split("::")[-1]
    mapped = lookup_enum_name(last, enum_lines)
    return mapped if not mapped.startswith("cant find ") else token

def _normalize_type_inner(inner: str, class_name_ctx: Optional[str],
                          class_token_map: Dict[str,str],
                          enum_lines: List[str]) -> str:
    t = inner.strip()
    t_cv = strip_cv_class_enum(t)
    t_cv_nr = _strip_ptr_ref_qual(t_cv)

    # Specials / unions
    if re.match(r'^DB::TCell<\s*(?:class\s+)?General::TIndex<unsigned\s+int,\s*(?:struct\s+)?DB::GridIndexTag\s*>\s*>', t_cv_nr):
        return "{r: integer, c: integer}"
    if t_cv_nr.startswith("union DB::RCUser") or t_cv_nr == "DB::RCUser":
        return "User"

    # Direct remaps
    if t_cv_nr == "DB::CmdInputString": return "string"
    if t_cv_nr == "DB::SmartPointerBase": return "Object"
    if t_cv_nr in ["DB::Margin", "Graphics::AnchorPoints"]: return "{left: integer, right: integer, top: integer, bottom: integer}"
    if t_cv_nr == "DB::Rect": return "{left: number, right: number, top: number, bottom: number}"

    if t_cv_nr == "DB::DMX::PatchInfo":
        return "PatchInfo"
    if re.fullmatch(r'Crypto::Guid<\s*128\s*>', t_cv_nr) or  "Crypto::Key128" == t_cv_nr:
        return "Key128"

    if re.fullmatch(r'(?:class\s+)?Container::SharedPtr<\s*(?:class\s+)?Manet\.HostDataExt\s*>', t.replace(' ', '')):
        return ("{station: {speed: integer, name: string, mem_available: integer, watchdog_mask: integer, "
                "usb_devices: integer, mac_hi: integer, mac_low: integer, flags: {enable_net: integer, "
                "accept_3rd_party: integer, enable_remote_hid: integer, enable_remotes: integer, "
                "enable_invite: integer, visible_in_cloud: integer, remote_active: integer, "
                "primary_if_up: integer, ip_collision: integer}, mem_installed: integer, ip_prefix: integer, "
                "status: integer, master_prio: integer, pu_prio: integer, slot: integer}, "
                "session: {index: integer, branch: integer, small_version: integer, location: string, "
                "name: string, showfile: string, big_version: integer, id: integer}}")

    if t_cv_nr == "GridSelection::SimpleCell":
        return "{column: integer, row: integer}"

    if t_cv.startswith("Container::ArrayCount<"):
        args_str = t_cv[t_cv.find("<")+1:][:-1] if t_cv.endswith(">") else ""
        parts = split_top_level(args_str)
        if len(parts) >= 2:
            first = strip_cv_class_enum(parts[0])
            second = strip_cv_class_enum(parts[1])
            if first in {"DMXPropertyAddress", "class DMXPropertyAddress"} and re.fullmatch(r'\d+', second):
                if int(second) == 8:
                    return "DMXPropertyBreak"

    # Contextual StreamToken
    if t_cv_nr == "DB::StreamToken":
        if class_name_ctx == "Sequence": return "SequenceActionToken"
        if class_name_ctx == "Preset":   return "PresetActionToken"

    # Families
    if re.match(r'^Text::TString<.*', t_cv_nr): return "string"
    if re.match(r'^DB::SetParam\b', t_cv_nr):   return "string"

    # Primitives
    if t_cv_nr == "void":   return "void"
    if t_cv_nr == "bool":   return "boolean"
    if is_integer_primitive(t): return "integer"
    if is_number_primitive(t):  return "number"
    if t_cv_nr == "DB::HandleBase": return "Object"

    # Containers
    if t_cv.startswith("Container::Collect<") or t_cv.startswith("class Container::Collect<"):
        args_str = t_cv[t_cv.find("<")+1:][:-1] if t_cv.endswith(">") else ""
        first = split_top_level(args_str)
        if first:
            elem = _normalize_type_inner(first[0], class_name_ctx, class_token_map, enum_lines)
            return f"{elem}[]"

    if t_cv.startswith("Container::Array<") or t_cv.startswith("class Container::Array<"):
        args_str = t_cv[t_cv.find("<")+1:][:-1] if t_cv.endswith(">") else ""
        parts = split_top_level(args_str)
        if len(parts) >= 2:
            raw_type = strip_cv_class_enum(parts[0])
            firstarg = _normalize_type_inner(raw_type, class_name_ctx, class_token_map, enum_lines)
            count_str = strip_cv_class_enum(parts[1])
            m_count = re.fullmatch(r'\d+', count_str)
            if m_count:
                n = int(count_str)
                repeated = "[" + ", ".join([firstarg] * n) + "]"
                if len(repeated) > 10000:
                    return f"{firstarg}[]"
                return repeated

    if t_cv.startswith("LinkedList::PtrList<") or t_cv.startswith("class LinkedList::PtrList<"):
        args = t_cv[t_cv.find("<")+1:][:-1] if t_cv.endswith(">") else ""
        parts = split_top_level(args)
        if len(parts) >= 2:
            elem = _normalize_type_inner(parts[1], class_name_ctx, class_token_map, enum_lines)
            return f"{elem}[]"

    if t_cv.startswith("Container::MapTpl<") or t_cv.startswith("class Container::MapTpl<"):
        args_str = t_cv[t_cv.find("<")+1:][:-1] if t_cv.endswith(">") else ""
        key = "DefaultMapItemDescr<"
        idx = args_str.find(key)
        if idx != -1:
            lt = args_str.find("<", idx)
            if lt != -1:
                depth = 1
                j = lt + 1
                content: List[str] = []
                while j < len(args_str):
                    ch = args_str[j]
                    if ch == '<': depth += 1; content.append(ch)
                    elif ch == '>':
                        depth -= 1
                        if depth == 0: break
                        content.append(ch)
                    else:
                        content.append(ch)
                    j += 1
                inner_types_str = ''.join(content).strip()
                parts = [p for p in split_top_level(inner_types_str) if p.strip()]
                if len(parts) >= 2:
                    type1 = _normalize_type_inner(parts[0], class_name_ctx, class_token_map, enum_lines)
                    type2 = _normalize_type_inner(parts[1], class_name_ctx, class_token_map, enum_lines)
                    return f"table<{type1}, {type2}>"

    # Handle-like wrappers → map to class token names
    handle_prefixes = (
        "class DB::Handle<",
        "class DB::RelativeHandle<",
        "class DB::SmartPointer<",
        "class DB::PtrObjectNode<",
        "class DB::PtrObjectNode2<",
        "class LinkedList::PtrNode<",
    )
    for pref in handle_prefixes:
        if t.startswith(pref) or t_cv_nr.startswith(pref.replace("class ","")):
            src = t if t.startswith(pref) else t_cv_nr
            args_str = src[len(pref):]
            if args_str.endswith(">"): args_str = args_str[:-1]
            args = split_top_level(args_str)
            if pref == "class DB::PtrObjectNode<":
                if len(args) >= 2:
                    return lookup_handle_target_name(strip_cv_class_enum(args[1]), class_token_map)
                return "cant parse PtrObjectNode args"
            elif pref == "class DB::PtrObjectNode2<":
                if len(args) >= 1:
                    return lookup_handle_target_name(strip_cv_class_enum(args[0]), class_token_map)
                return "cant parse PtrObjectNode2 args"
            else:
                if len(args) >= 1:
                    return lookup_handle_target_name(strip_cv_class_enum(args[0]), class_token_map)
                return "cant parse handle args"

    # Enum explicit
    if t_cv.startswith("enum "):
        enum_full = strip_cv_class_enum(t)
        last = enum_full.split("::")[-1]
        return lookup_enum_name(last, enum_lines)

    # Class tokens
    mapped = lookup_class_token_optional(t, class_token_map)
    if mapped: return mapped

    t_plain = strip_cv_class_enum(t)
    t2 = _maybe_enum_without_prefix(t_plain, enum_lines)
    if t2 != t_plain: return t2
    return t_plain

# ---------------- fun helpers & overrides ----------------

def _base_name_for_param(t: str) -> str:
    if t.startswith("{"): return "arry"
    prim_map = {"string":"str","integer":"int","number":"num","boolean":"bool","Object":"obj","void":"arg"}
    if t in prim_map: return prim_map[t]
    leaf = re.sub(r'[^A-Za-z0-9_]', '', t.split("::")[-1]) or "arg"
    return leaf[0].lower() + leaf[1:] if leaf else "arg"

def _format_params_with_counts(types_list: List[str]) -> List[str]:
    totals: Dict[str,int] = {}
    for t in types_list: totals[t] = totals.get(t,0)+1
    seen: Dict[str,int] = {}
    out: List[str] = []
    for t in types_list:
        seen[t] = seen.get(t,0)+1
        base = _base_name_for_param(t)
        name = base if totals[t] == 1 else f"{base}{seen[t]}"
        out.append(f"{name}: {t}")
    return out

def _auto_names_for_subset(types_list: List[str]) -> List[str]:
    totals, seen = {}, {}
    for t in types_list: totals[t] = totals.get(t,0)+1
    out = []
    for t in types_list:
        seen[t] = seen.get(t,0)+1
        base = _base_name_for_param(t)
        out.append(base if totals[t]==1 else f"{base}{seen[t]}")
    return out

FUN_RE = re.compile(r'^\s*fun\s*\((.*)\)\s*(?::\s*(.+))?\s*$', re.S)

def _parse_fun_sig(sig: str) -> Tuple[Optional[List[str]], Optional[str]]:
    m = FUN_RE.match(sig or "")
    if not m: return None, None
    params_str = m.group(1).strip()
    ret = (m.group(2) or "").strip() or None
    if not params_str: return [], ret
    parts = split_top_level_all(params_str)
    types: List[str] = []
    for p in parts:
        if ':' in p:
            _, t = p.split(':', 1)
            types.append(t.strip())
        else:
            types.append(p.strip())
    return types, ret

def _build_fun_sig(names: List[str], types: List[str], ret: Optional[str]) -> str:
    pairs = [f"{n}: {t}" for n, t in zip(names, types)]
    return f"fun({', '.join(pairs)})" if not ret or ret == "void" else f"fun({', '.join(pairs)}) : {ret}"

def _to_camel(name: str) -> str:
    cleaned = re.sub(r'[^A-Za-z0-9]+', ' ', name).strip()
    if not cleaned: return "arg"
    parts = cleaned.split()
    head = parts[0].lower()
    tail = [p[:1].upper() + p[1:].lower() for p in parts[1:]]
    return head + ''.join(tail)

def _apply_description_overrides(signature: str, description: str) -> str:
    if not signature or not signature.strip().startswith("fun(") or not description:
        return signature

    types, ret = _parse_fun_sig(signature)
    if types is None: return signature

    desc = description.strip()
    desc_norm = re.sub(r'\s+', ' ', desc.replace(", ", "; ").replace(",", ";"))

    def append_extras(mapped_names: List[str], mapped_types: List[str], start_idx: int):
        if start_idx < len(types):
            extra_types = types[start_idx:]
            extra_names = _auto_names_for_subset(extra_types)
            return mapped_names + extra_names, mapped_types + extra_types
        return mapped_names, mapped_types

    # explicit patterns
    if re.fullmatch(r'0\s*:\s*str\s*;\s*1\s*:\s*Button\([^)]*\)\s*;\s*2\s*:\s*X\(px\)\s*;\s*3\s*:\s*Y\(px\)', desc_norm, flags=re.I):
        names, base_types = ["str","Button","X","Y"], ["string","MouseButtonTypes","integer","integer"]
        names, tps = append_extras(names, base_types, 4); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*str\s*;\s*1\s*:\s*X\(px\)\s*;\s*2\s*:\s*Y\(px\)', desc_norm, flags=re.I):
        names, base_types = ["str","X","Y"], ["string","integer","integer"]
        names, tps = append_extras(names, base_types, 3); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*str\s*;\s*1\s*:\s*key\s*code', desc_norm, flags=re.I):
        if len(types) >= 2:
            types2 = types[:]; types2[1] = "VirtualKeyCode"
            names = ["str","keyCode"]; names,tps = append_extras(names, types2[:2], 2)
            return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*str\s*;\s*1\s*:\s*point\s*id\s*;\s*2\s*:\s*X\(px\)\s*;\s*3\s*:\s*Y\(px\)', desc_norm, flags=re.I):
        names, base_types = ["str","pointID","X","Y"], ["string","integer","integer","integer"]
        names, tps = append_extras(names, base_types, 4); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*AbsX\(px\)\s*;\s*1\s*:\s*AbsY\(px\)', desc_norm, flags=re.I):
        names, base_types = ["str","AbsX","AbsY"], ["string","integer","integer"]
        names, tps = append_extras(names, base_types, 3); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*DeltaX\(px\)\s*;\s*1\s*:\s*DeltaY\(px\)', desc_norm, flags=re.I):
        names, base_types = ["str","DeltaX","DeltaY"], ["string","integer","integer"]
        names, tps = append_extras(names, base_types, 3); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*(?:dummy\s*str|str)\s*;\s*1\s*:\s*(?:current\s*value|value)', desc_norm, flags=re.I):
        vtype = types[1] if len(types) >= 2 else "any"
        names, base_types = ["str","value"], ["string", vtype]
        names, tps = append_extras(names, base_types, 2); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*str\s*;\s*1\s*:\s*utf32\s*char', desc_norm, flags=re.I):
        if len(types) >= 2:
            names, base_types = ["str","utf32Char"], ["string", types[1]]
            names, tps = append_extras(names, base_types, 2); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*dummy\s*str\s*;\s*1\s*:\s*button\s*type\s*uint8_t\s*;\s*2\s*:\s*X\s*pixel_t\s*;\s*3\s*:\s*Y\s*pixel_t', desc_norm, flags=re.I):
        names, base_types = ["dummyStr","button","X","Y"], ["string","MouseButtonTypes","integer","integer"]
        names, tps = append_extras(names, base_types, 4); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*dummy\s*str\s*;\s*1\s*:\s*column\s*id\s*uint64_t\s*;\s*2\s*:\s*row\s*id\s*uint64_t', desc_norm, flags=re.I):
        names, base_types = ["dummyStr","column","row"], ["string","integer","integer"]
        names, tps = append_extras(names, base_types, 3); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*dummy\s*str\s*;\s*1\s*:\s*abs\s*addr', desc_norm, flags=re.I):
        names, base_types = ["str","int"], ["string","AbsoluteAddress"]
        names, tps = append_extras(names, base_types, 2); return _build_fun_sig(names,tps,ret)

    if re.fullmatch(r'0\s*:\s*Object\s*\*pCaller\s*;\s*1\s*:\s*SetParam\s*&\s*p\s*;\s*2\s*:\s*const\s*HandleBase\s*Target\s*;\s*3\s*:\s*String\s*TargetPropertyName\s*;\s*4\s*:\s*uint64_t\s*rowId', desc_norm, flags=re.I):
        names, base_types = ["str","Target","TargetPropertyName","rowId"], ["string","Object","string","integer"]
        names, tps = append_extras(names, base_types, 5); return _build_fun_sig(names,tps,ret)

    m_one = re.fullmatch(r'0\s*:\s*([A-Za-z0-9 _-]+)', desc_norm)
    if m_one and len(types) == 1:
        new_name = _to_camel(m_one.group(1))
        return _build_fun_sig([new_name], [types[0]], ret)

    return signature

# ---------------- parse CTypeName into final type ----------------

METHODT_TOKEN          = "DB::PropertyMethodT"
INVOKABLE_TOKEN        = "DB::PropertyInvokableT"
CONNECTIBLE_TOKEN      = "DB::PropertyConnectibleT"

def _extract_template_inner_balanced(demangled: str, token_variants: List[str]) -> Optional[str]:
    if not demangled: return None
    s2 = re.sub(r'\s+', ' ', demangled).strip()
    token_alt = r'(?:const\s+)?(?:class\s+)?(?:' + '|'.join(re.escape(t) for t in token_variants) + r')\s*<'
    m = re.search(token_alt, s2)
    if not m: return None
    lt_idx = m.end() - 1
    depth, start, i = 0, lt_idx + 1, lt_idx + 1
    while i < len(s2):
        ch = s2[i]
        if ch == '<': depth += 1
        elif ch == '>':
            if depth == 0: return s2[start:i].strip()
            depth -= 1
        i += 1
    return None

def _parse_FirstType_then_two_groups(inner: str) -> Tuple[str,str]:
    first_type_chars: List[str] = []
    a_depth = 0
    i = 0
    while i < len(inner):
        ch = inner[i]
        if ch == '<': a_depth += 1; first_type_chars.append(ch)
        elif ch == '>': a_depth -= 1; first_type_chars.append(ch)
        elif ch == '(' and a_depth == 0: break
        else: first_type_chars.append(ch)
        i += 1
    first_type_raw = ''.join(first_type_chars).strip()

    def skip_group(sv: str, pos: int) -> int:
        depth, j = 1, pos
        while j < len(sv):
            if sv[j] == '(': depth += 1
            elif sv[j] == ')':
                depth -= 1
                if depth == 0: return j + 1
            j += 1
        return len(sv)

    if i < len(inner) and inner[i] == '(':
        i = skip_group(inner, i + 1)

    while i < len(inner) and inner[i] != '(':
        i += 1

    second = ""
    if i < len(inner) and inner[i] == '(':
        j, depth, a_depth = i + 1, 1, 0
        content: List[str] = []
        while j < len(inner):
            ch = inner[j]
            if ch == '<': a_depth += 1; content.append(ch)
            elif ch == '>': a_depth -= 1; content.append(ch)
            elif ch == '(': depth += 1; content.append(ch)
            elif ch == ')':
                depth -= 1
                if depth == 0: break
                content.append(ch)
            else: content.append(ch)
            j += 1
        second = ''.join(content).strip()
    return first_type_raw, second

def _parse_member_function_type(sig: str) -> Tuple[str, List[str]]:
    s = sig.strip()
    ret_chars: List[str] = []
    a_depth, i = 0, 0
    while i < len(s):
        ch = s[i]
        if ch == '<': a_depth += 1; ret_chars.append(ch)
        elif ch == '>': a_depth -= 1; ret_chars.append(ch)
        elif ch == '(' and a_depth == 0: break
        else: ret_chars.append(ch)
        i += 1
    ret_raw = ''.join(ret_chars).strip()

    last_open, last_close, depth = -1, -1, 0
    for j, ch in enumerate(s):
        if ch == '(':
            if depth == 0: last_open = j
            depth += 1
        elif ch == ')':
            depth -= 1
            if depth == 0: last_close = j
    args_raw = ""
    if last_open != -1 and last_close != -1 and last_close > last_open:
        args_raw = s[last_open+1:last_close].strip()
    args = [a.strip() for a in split_top_level(args_raw)] if args_raw else []
    return ret_raw, args

def _normalize_ret_args_for_method_like(inner: str,
                                        class_name_ctx: Optional[str],
                                        class_token_map: Dict[str,str],
                                        enum_lines: List[str]) -> Tuple[str, List[str]]:
    tpl_parts = split_top_level(inner)
    if tpl_parts and '::*)' in tpl_parts[0]:
        ret_raw, arg_list = _parse_member_function_type(tpl_parts[0])
    else:
        first_raw, args_group = _parse_FirstType_then_two_groups(inner)
        ret_raw = first_raw
        arg_list = [a for a in split_top_level(args_group) if a.strip()]
    norm_ret  = _normalize_type_inner(ret_raw, class_name_ctx, class_token_map, enum_lines) if ret_raw else "void"
    norm_args = [_normalize_type_inner(a, class_name_ctx, class_token_map, enum_lines) for a in arg_list]
    return norm_ret, norm_args

def parse_property_methodT(demangled: str, class_name_ctx: Optional[str],
                           class_token_map: Dict[str,str], enum_lines: List[str]) -> str:
    inner = _extract_template_inner_balanced(demangled, [METHODT_TOKEN])
    if inner is None: return demangled
    norm_ret, norm_args = _normalize_ret_args_for_method_like(inner, class_name_ctx, class_token_map, enum_lines)
    if len(norm_args) == 1 and norm_args[0] == "void": norm_args = []
    params_fmt = _format_params_with_counts(norm_args)
    return f"fun({', '.join(params_fmt)})" if norm_ret == "void" else f"fun({', '.join(params_fmt)}) : {norm_ret}"

def parse_property_invokableT(demangled: str, class_name_ctx: Optional[str],
                              class_token_map: Dict[str,str], enum_lines: List[str]) -> str:
    inner = _extract_template_inner_balanced(demangled, [INVOKABLE_TOKEN])
    if inner is None: return demangled
    norm_ret, norm_args = _normalize_ret_args_for_method_like(inner, class_name_ctx, class_token_map, enum_lines)
    if norm_args: norm_args = norm_args[1:]  # skip first parameter
    if len(norm_args) == 1 and norm_args[0] == "void": norm_args = []
    params_fmt = _format_params_with_counts(norm_args)
    return f"fun({', '.join(params_fmt)})" if norm_ret == "void" else f"fun({', '.join(params_fmt)}) : {norm_ret}"

def parse_property_connectibleT(demangled: str, class_name_ctx: Optional[str],
                                class_token_map: Dict[str,str], enum_lines: List[str]) -> str:
    inner = _extract_template_inner_balanced(demangled, [CONNECTIBLE_TOKEN])
    if inner is None: return demangled
    pref = "class DB::SmartSignalPtr<"
    if not inner.startswith(pref):
        pref2 = "DB::SmartSignalPtr<"
        if not inner.startswith(pref2): return demangled
        pref = pref2
    start, depth, i = len(pref), 1, len(pref)
    content: List[str] = []
    while i < len(inner):
        ch = inner[i]
        if ch == '<': depth += 1; content.append(ch)
        elif ch == '>':
            depth -= 1
            if depth == 0: break
            content.append(ch)
        else: content.append(ch)
        i += 1
    types_str = ''.join(content).strip()
    raw_types = [t for t in split_top_level(types_str) if t.strip()]
    norm_types = [_normalize_type_inner(t, class_name_ctx, class_token_map, enum_lines) for t in raw_types]
    other_params_fmt = _format_params_with_counts(norm_types)
    return f"fun(str: string, {', '.join(other_params_fmt)})" if other_params_fmt else "fun(str: string)"

def parse_property_plain_property(demangled: str, class_name_ctx: Optional[str],
                                  class_token_map: Dict[str,str], enum_lines: List[str]) -> str:
    if not (demangled.startswith("const DB::Property<") and demangled.endswith(">::`vftable'")):
        return demangled
    inner = demangled[len("const DB::Property<"):-len(">::`vftable'")].strip()
    return _normalize_type_inner(inner, class_name_ctx, class_token_map, enum_lines)

def try_get_plain_property_inner(demangled: str) -> Optional[str]:
    if not demangled: return None
    if demangled.startswith("const DB::Property<") and demangled.endswith(">::`vftable'"):
        return demangled[len("const DB::Property<"):-len(">::`vftable'")].strip()
    return None

def parse_inner_of_property_to_type(demangled: str, class_name_ctx: Optional[str],
                                    class_token_map: Dict[str,str], enum_lines: List[str]) -> str:
    s = demangled.strip()
    if re.search(r'\bDB::PropertyMethodT\b', s):
        out = parse_property_methodT(s, class_name_ctx, class_token_map, enum_lines)
        if out != s: return out
    if re.search(r'\bDB::PropertyInvokableT\b', s):
        out = parse_property_invokableT(s, class_name_ctx, class_token_map, enum_lines)
        if out != s: return out
    if re.search(r'\bDB::PropertyConnectibleT\b', s):
        out = parse_property_connectibleT(s, class_name_ctx, class_token_map, enum_lines)
        if out != s: return out
    if s.startswith("const DB::PropertyMethodT<"):
        return parse_property_methodT(s, class_name_ctx, class_token_map, enum_lines)
    if s.startswith("const DB::PropertyInvokableT<"):
        return parse_property_invokableT(s, class_name_ctx, class_token_map, enum_lines)
    if s.startswith("const DB::PropertyConnectibleT<"):
        return parse_property_connectibleT(s, class_name_ctx, class_token_map, enum_lines)
    return parse_property_plain_property(s, class_name_ctx, class_token_map, enum_lines)

# ---------------- finalization & overrides ----------------

def finalize_type_string(s: str) -> str:
    if not isinstance(s, str): return s
    return s.replace("DB::", "").replace("::", ".")

def apply_description_if_any(current_type: str, descr: Optional[str]) -> str:
    if current_type and current_type.startswith("fun(") and descr:
        try:
            return _apply_description_overrides(current_type, descr)
        except Exception:
            return current_type
    return current_type

# ----------------  Enum field preference ----------------

_HANDLE_OR_CONTAINER_PREFIXES = (
    "DB::Handle<", "DB::RelativeHandle<", "DB::SmartPointer<",
    "DB::PtrObjectNode<", "DB::PtrObjectNode2<", "LinkedList::PtrNode<",
    "Container::Collect<", "Container::Array<", "LinkedList::PtrList<",
    "Container::MapTpl<"
)

def _should_use_property_enum(enum_val: str,
                              demangled: str,
                              class_token_map: Dict[str, str]) -> bool:
    """
    Prefer Enum when:
      - this is a *plain* DB::Property<...> (not Method/Invokable/Connectible)
      - the inner type is NOT a class reference (per class_token_map)
      - and the inner type does not start with our handle/container prefixes
    """
    if not enum_val:
        return False
    lv = enum_val.strip().lower()
    if lv in {"none", "no name", "noname", "null"}:
        return False

    inner = try_get_plain_property_inner(demangled)
    if not inner:
        return False
    if lookup_class_token_optional(inner, class_token_map):
        return False
    inner_nocv = strip_cv_class_enum(inner)
    for pref in _HANDLE_OR_CONTAINER_PREFIXES:
        if inner_nocv.startswith(pref) or inner_nocv.startswith("class " + pref):
            return False
    return True


def _resolve_enum_type_from_field(enum_val: str, enum_lines: List[str]) -> str:
    if enum_val.strip().lower() in ["yesno", "onoff", "truefalse", "rdmpidvalueonoff", "rdmpidvaluefactorydefaults", "matricksinvert", "layoutvisibility", "genvirtualdimmer", "cmdeventstatus", "bloomintensity3d", "ecplay", "ecrec", "fixtureinvert", "lockedyesno"]:
        return enum_val.strip()+"|boolean"
    if enum_val.strip() == "Yes":
        return "Yes|true"
    last = enum_val.split("::")[-1].strip()
    looked = lookup_enum_name(last, enum_lines)
    return looked

# ---------------- small utils for pass-through ----------------

def _shallow_copy_without(d: Dict[str, Any], keys_to_omit: set) -> Dict[str, Any]:
    return {k: v for k, v in (d or {}).items() if k not in keys_to_omit}

# ---------------- processing pipeline ----------------

# Keys we intentionally omit from the final JSON
_ROOT_OMIT = {"class_token_map"}  # keep using it internally, but don't emit
# Note: we do not omit anything at class-level by default.
_PROP_OMIT_EXTRA = set()  # placeholder in case you want to drop tracked property keys later

def process_dump(raw: Dict[str, Any], enum_lines: List[str]) -> Dict[str, Any]:
    # Start by passing through everything at root, except tracked omissions
    out: Dict[str, Any] = _shallow_copy_without(raw, _ROOT_OMIT)

    class_token_map: Dict[str,str] = raw.get("class_token_map", {})
    classes = raw.get("classes") or {}

    classes_out: Dict[str, Any] = {}

    for addr, cls in classes.items():
        cls_out: Dict[str, Any] = dict(cls)

        if cls.get("name") is not None:      cls_out["name"] = cls.get("name")
        if cls.get("base"):                  cls_out["base"] = cls["base"]
        if cls.get("child"):                 cls_out["child"] = cls["child"]
        if cls.get("parent"):                cls_out["parent"] = cls["parent"]
        if cls.get("description"):
            cls_out["description"] = "" if cls.get("description") == "your description here." else cls["description"]

        props_out: List[Dict[str, Any]] = []
        class_name_ctx = cls_out.get("name")
        for p in cls.get("properties", []):
            po: Dict[str, Any] = dict(p)

            if "Enum" in p:
                po["Enum"] = p["Enum"]

            po["CTypeName"] = p.get("CTypeName")
            po["name"]      = p.get("name")
            if p.get("TypeNameStr"): po["TypeNameStr"] = p["TypeNameStr"]
            po["subtype"]   = p.get("subtype", 0)
            if p.get("default") is not None: po["default"] = p.get("default")
            if p.get("description"):
                po["description"] = "" if p.get("description") == "your description here." else p["description"]

            enum_field = po.get("Enum")
            ctn = p.get("CTypeName") or ""
            computed = parse_inner_of_property_to_type(ctn, class_name_ctx, class_token_map, enum_lines)
            computed = apply_description_if_any(computed, p.get("description"))
            computed = finalize_type_string(computed)

            if enum_field and _should_use_property_enum(str(enum_field), ctn, class_token_map):
                enum_type = _resolve_enum_type_from_field(str(enum_field), enum_lines)
                enum_type = finalize_type_string(enum_type)
                po["type"] = enum_type
            else:
                po["type"] = computed

            for k in list(po.keys()):
                if k in _PROP_OMIT_EXTRA:
                    del po[k]

            props_out.append(po)

        cls_out["properties"] = props_out
        classes_out[addr] = cls_out
        
    out.update(classes_out)
    out.pop("classes", None)
    return out


def main(argv: List[str]) -> None:
    if len(argv) < 3:
        print("Usage: python process_props_types.py input.json output.json")
        sys.exit(1)
    in_path, out_path = argv[1], argv[2]
    script_dir = os.path.dirname(os.path.abspath(__file__))
    enum_lines = read_enum_lines(script_dir)
    raw = read_json(in_path)
    out = process_dump(raw, enum_lines)
    write_json(out_path, out)
    print(f"[+] Wrote processed JSON: {out_path}")

if __name__ == "__main__":
    main(sys.argv)
