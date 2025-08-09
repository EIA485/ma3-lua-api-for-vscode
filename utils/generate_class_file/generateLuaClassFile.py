import sys, json, os, re
from dataclasses import dataclass, field
from typing import Optional, List, Dict, Any
from collections import defaultdict, OrderedDict
from itertools import groupby

def loadJson(path: str):
    with open(path) as f:
       return json.load(f)


@dataclass
class Prop:
    name: Optional[str] = None
    TypeNameStr: Optional[str] = None
    subtype: int = 0
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

def loadClassJson(path: str) -> Dict[str, ClassEntry]:
    data = loadJson(path)
    return {
        k: ClassEntry(
            name=str(v.get("name")).replace(' ',''),
            base=v.get("base"),
            child=v.get("child"),
            parent=v.get("parent"),
            description=v.get("description"),
            properties=[
                Prop(
                    **{
                        **p,
                        "name": str(p.get("name")).replace(' ', '') if p.get("name") is not None else None
                    }
                )
                for p in v.get("properties", [])
                if isinstance(p, dict)
            ]
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
    groups = defaultdict(list)
    for k, v in d.items(): groups[v.name or k].append(k)
    emitted = set()
    for k in order:
        v = d[k]; n = v.name or k
        if n in emitted: continue
        emitted.add(n)
        props = list(OrderedDict((p.name, p) for kk in groups[n] for p in (d[kk].properties or [])).values())
        yield k, ClassEntry(v.name, v.base, v.child, v.parent, v.description, props)

def ConcatPropNames(props: list[Prop]) -> str:
    return "|".join(f'"{prop.name}"' for prop in props if prop.name)


data = loadClassJson(sys.argv[1])
extraFuncs = loadJson(sys.argv[2])

def GetPropsRec(klass:ClassEntry) -> List[Prop]: 
    if klass != data[klass.base]:
        return GetPropsRec(data[klass.base]) + klass.properties
    else: 
        return klass.properties

def notParentSameOnBase(klass:ClassEntry): 
    return data[klass.base].parent != klass.parent

def notChildSameOnBase(klass:ClassEntry): 
    return data[klass.base].child != klass.child

outstr = [""]

def append(str):
    outstr.append(str)
def removeChars(count):
    outstr[-1] = outstr[-1][:-count]

append("---@meta\n")
append(f"--generated from {os.path.basename(sys.argv[1])}\n")
append("\n")

lastName = ""

for k,v in orderFilter(data):
    append(f"---@class {v.name}")
    HasParent = v.base != k
    if HasParent:
        append(f": {data[v.base].name}")
    if v.description: 
        if not HasParent:
            append(f" @{v.description}")
        else:
            append(f" {v.description}")
    append('\n')
    
    for p in v.properties:
        append(f"---@field {str(p.name)} {p.TypeNameStr}")
        if p.description: append(f" {p.description}")
        append('\n')
    append(f"local {v.name} = {'{'}\n")
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
    append(f"function {v.name}:GetClass() end\n")

    append(f"---@return \"{data[v.child].name}\"\n")
    append(f"function {v.name}:GetChildClass() end\n")

    if notParentSameOnBase(v):
        append(f"---@return {data[v.parent].name}\n")
        append(f"function {v.name}:Parent() end\n")
    
    if notChildSameOnBase(v):
        append(f"---@param index integer\n")
        append(f"---@return {data[v.child].name}\n")
        append(f"function {v.name}:Ptr(index) end\n")

        append(f"---@return {data[v.child].name}[]\n")
        append(f"function {v.name}:Children() end\n")

        append(f"---@return {data[v.child].name}?\n")
        append(f"function {v.name}:CurrentChild() end\n")
    
    if len(v.properties)>0 or notChildSameOnBase(v):
        if len(v.properties)>0:
            allProps = GetPropsRec(v)
            for props in [list(g) for _, g in groupby(allProps, key=lambda p: p.TypeNameStr)]:
                append(f"---@overload fun(name: {ConcatPropNames(props)}, role: nil): {props[0].TypeNameStr}\n")
            append(f"---@overload fun(name: {ConcatPropNames(allProps)}, role: Enums.Roles): string\n")
        append(f"---@overload fun(name: integer, role: nil): {data[v.child].name}\n")
        append(f"function {v.name}:Get(name, role) end")

    if funcs := extraFuncs.get(v.name):
        append("\n")
        append(funcs)
    
    append('\n\n')
removeChars(2)#remove trailing newlines



with open(os.path.splitext(sys.argv[1])[0] + '.lua', 'w') as f:
    f.write(''.join(outstr))
