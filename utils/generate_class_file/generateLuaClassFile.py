import sys, json, os, re, inspect, time
from dataclasses import dataclass, field
from typing import Optional, List, Dict, Any, Tuple
from collections import defaultdict, OrderedDict
from itertools import groupby

start = time.time()

def nameFilter(s):
    s=re.sub(r'[^A-Za-z0-9_]','',s)
    return ('_' + s) if s and s[0].isdigit() else (s or '_')

def loadJson(path: str):
    with open(path) as f:
       return json.load(f)


@dataclass
class Prop:
    name: Optional[str] = None
    type: Optional[str] = None
    default: Optional[str] = None
    description: Optional[str] = None

@dataclass
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
            name=str(v.get("name")).replace(' ',''),
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


def orderFilter(d: dict[str, ClassEntry]):
    children = {k: [] for k in d}
    roots = []
    for k, v in d.items():
        b = v.base or k
        (children[b].append(k) if b in d and b != k else roots.append(k))
    seen = set()
    def dfs(n):
        if n in seen: return
        seen.add(n); yield n
        for c in children.get(n, []): yield from dfs(c)
    order = []
    for r in roots: order += list(dfs(r))
    for k in d:
        if k not in seen: order += list(dfs(k))
    pos = {k:i for i,k in enumerate(order)}
    groups = defaultdict(list)
    for k, v in d.items(): groups[v.name or k].append(k)
    ref, merged = {}, {}
    for ks in groups.values():
        rk = min(ks, key=lambda x: pos.get(x, 10**9))
        bk = max(ks, key=lambda x: len(d[x].properties or []))
        props = list(OrderedDict((p.name, p) for kk in ks for p in (d[kk].properties or [])).values())
        desc = d[bk].description if d[bk].description is not None else next((d[kk].description for kk in ks if d[kk].description is not None), None)
        merged[rk] = ClassEntry(d[rk].name, d[bk].base, d[bk].child, d[bk].parent, desc, props, d[bk].safeName)
        for kk in ks: ref[kk] = rk
    merged = {k: ClassEntry(v.name, ref.get(v.base, v.base), ref.get(v.child, v.child), ref.get(v.parent, v.parent), v.description, v.properties, v.safeName) for k, v in merged.items()}
    emitted = set()
    for k in order:
        rk = ref[k]
        if rk in emitted: continue
        emitted.add(rk); yield rk, merged[rk]



def ConcatPropNames(props: list[Prop]) -> str:
    return "|".join(f'"{prop.name}"' for prop in props if prop.name)


data = loadClassJson(sys.argv[1])
extraFuncs = loadJson(sys.argv[2])

def GetPropsRec(klass:ClassEntry) -> List[Prop]: 
    if klass != data[klass.base]:
        return GetPropsRec(data[klass.base]) + klass.properties
    else: 
        return klass.properties

def GetClassInheratanceTreeString(root: str) -> str:
    if data[data[root].base].base != data[root].base:
        return GetClassInheratanceTreeString(data[root].base) + os.sep + data[root].name
    return data[root].name

def notParentSameOnBase(klass:ClassEntry): 
    return data[klass.base].parent != klass.parent

def notChildSameOnBase(klass:ClassEntry): 
    return data[klass.base].child != klass.child


def isDerivedFrom(klass: str, base: str) -> bool:
    if klass == base:
        return True
    if data[klass].base == klass:
        return False
    return isDerivedFrom(data[klass].base, base)


def findChildClasses(id: str, filter: str) -> list[ClassEntry]:
    all = []
    if isDerivedFrom(filter, data[id].parent):
        all.append(data[id])
    for kid, klass in data.items():
        if klass.base == id and kid != id:
            all.extend(findChildClasses(kid, filter))
    return all

def findParentClassesOfClass(parent:str, child:str) -> list[ClassEntry]:
    all = []
    if isDerivedFrom(child, data[parent].child):
        all.append(data[parent])
    for kid, klass in data.items():
        if klass.base == parent and kid != parent:
            all.extend(findParentClassesOfClass(kid, child))
    return all


def findParentClasses(child: str) -> list[ClassEntry]:
    all = []
    all.extend(findParentClassesOfClass(data[child].parent, child))
    for klass in all:
        if klass.parent != data[klass.parent].parent:
            all.extend(findParentClasses(klass.parent))
    return all

classChildClasses: Dict[Tuple[str, str], set[ClassEntry]]= {}
def getChildClasses(id: str, filter: str) -> set[ClassEntry]:
    if tryget:= classChildClasses.get((id,filter)):
        return tryget
    else:
        calc = findChildClasses(id,filter)
        classChildClasses[(id,filter)] = calc
        return calc

outstr = [""]

def append(str):
    outstr.append(str)
def removeChars(count):
    outstr[-1] = outstr[-1][:-count]



lastName = ""

for k,v in orderFilter(data):
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


    append(f"---@return \"{v.safeName}\"\n")
    append(f"function {v.safeName}:GetClass() end\n")

    append(f"---@return \"{data[v.child].safeName}\"\n")
    append(f"function {v.safeName}:GetChildClass() end\n")

    if notParentSameOnBase(v):
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
    
    if len(v.properties)>0 or notChildSameOnBase(v):
        if len(v.properties)>0:
            allProps = GetPropsRec(v)
            for props in [list(g) for _, g in groupby(allProps, key=lambda p: p.type)]:
                append(f"---@overload fun(name: {ConcatPropNames(props)}, role: nil): {props[0].type}\n")
            append(f"---@overload fun(name: {ConcatPropNames(allProps)}, role: Enums.Roles): string\n")
        append(f"---@overload fun(name: integer, role: nil): {data[v.child].safeName}\n")
        append(f"function {v.safeName}:Get(name, role) end\n")
    
    
    childClasses = getChildClasses(v.child, k)
    if k == v.base or childClasses != getChildClasses(data[v.base].child, v.base): #this check is quite slow but its more robust since it handles cases where a class is masked off my the child's parent field
        for klass in childClasses:
            append(f"---@overload fun(index: integer, class: \"{klass.name}\", undo: Undo?): {klass.safeName}\n")
        if childClasses.__contains__(data[v.child]):
            append(f"---@overload fun(index: integer, class: nil, undo: Undo?): {data[v.child].safeName}\n")
        if len(childClasses)>0:
            append(f"function {v.safeName}:Create(index, class, undo) end\n")
        
        for klass in childClasses:
            append(f"---@overload fun(class: \"{klass.name}\", undo: Undo?, count: integer?): {klass.safeName}\n")
        if childClasses.__contains__(data[v.child]):
            append(f"---@overload fun(class: nil, undo: Undo?, count: integer?): {data[v.child].safeName}\n")
        if len(childClasses)>0:
            append(f"function {v.safeName}:Append(class, undo, count) end\n")
        
        for klass in childClasses:
            append(f"---@overload fun(class: \"{klass.name}\", undo: Undo?): {klass.safeName}\n")
        if childClasses.__contains__(data[v.child]):
            append(f"---@overload fun(class: nil, undo: Undo?): {data[v.child].safeName}\n")
        if len(childClasses)>0:
            append(f"function {v.safeName}:Acquire(class, undo) end\n")
        
        for klass in childClasses:
            append(f"---@overload fun(class: \"{klass.name}\", undo: Undo?): {klass.safeName}\n")
        if childClasses.__contains__(data[v.child]):
            append(f"---@overload fun(class: nil, undo: Undo?): {data[v.child].safeName}\n")
        if len(childClasses)>0:
            append('---@deprecated use "Acquire" instead\n')
            append(f"function {v.safeName}:Aquire(class, undo) end\n")

        for klass in childClasses:
            append(f"---@overload fun(index: integer, class: \"{klass.name}\", undo: Undo?, count: integer?): {klass.safeName}\n")
        if childClasses.__contains__(data[v.child]):
            append(f"---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): {data[v.child].safeName}\n")
        if len(childClasses)>0:
            append(f"function {v.safeName}:Insert(index, class, undo, count) end\n")
        

        for klass in childClasses:
            append(f"---@overload fun(name: string, class: \"{klass.name}\"): {klass.safeName}\n")
        if childClasses.__contains__(data[v.child]):
            append(f"---@overload fun(name: string, class: nil): {data[v.child].safeName}\n")
        if len(childClasses)>0:
            append(f"function {v.safeName}:Find(name, class) end\n")
        # modify to show all posible recursive child classes 
        for klass in childClasses:
            append(f"---@overload fun(name: string, class: \"{klass.name}\"): {klass.safeName}\n")
        append("---@overload fun(name: string, class: nil): Object\n")
        append(f"function {v.safeName}:FindRecursive(name, class) end\n")
    
    #ParentClasses = findParentClasses(k)
    #append("parentClasses:")
    #for klass in ParentClasses:
    #    append(f"{klass.name}\n")

    
    if funcs := extraFuncs.get(v.name):
        append(funcs)
    
    path = os.path.join("GeneratedClasses", GetClassInheratanceTreeString(k)) + '.lua'
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, 'w') as f:
        f.write(''.join(outstr))

end = time.time()
print(f"Took {end - start:.3f} seconds")