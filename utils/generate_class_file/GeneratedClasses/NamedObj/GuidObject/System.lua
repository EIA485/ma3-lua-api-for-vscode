---@meta

---@class System: GuidObject
---@field SenderIP Manet.IP4
---@field Requested integer
---@field Port integer
---@field MulticastIP Manet.IP4
---@field MapX integer
---@field MapY integer
---@field MapZ integer
---@field InvX integer
---@field InvY integer
---@field InvZ integer
---@field MergeMode integer
---@field DMX
Priority integer
local System = {
    Requested="No",
    MapX="X",
    MapY="Y",
    MapZ="Z",
    InvX="No",
    InvY="No",
    InvZ="No",
    ["DMX
Priority"]="LTP"
}
---@return "System"
function System:GetClass() end
---@return "Tracker"
function System:GetChildClass() end
---@return PSNProtocol
function System:Parent() end
---@param index integer
---@return Tracker
function System:Ptr(index) end
---@return Tracker[]
function System:Children() end
---@return Tracker?
function System:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "SenderIP", role: nil): Manet.IP4
---@overload fun(name: "Requested"|"Port", role: nil): integer
---@overload fun(name: "MulticastIP", role: nil): Manet.IP4
---@overload fun(name: "MapX"|"MapY"|"MapZ"|"InvX"|"InvY"|"InvZ"|"MergeMode"|"DMX
Priority", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"SenderIP"|"Requested"|"Port"|"MulticastIP"|"MapX"|"MapY"|"MapZ"|"InvX"|"InvY"|"InvZ"|"MergeMode"|"DMX
Priority", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Tracker
function System:Get(name, role) end
---@overload fun(index: integer, class: "Tracker", undo: Undo?): Tracker
---@overload fun(index: integer, class: nil, undo: Undo?): Tracker
function System:Create(index, class, undo) end
---@overload fun(class: "Tracker", undo: Undo?, count: integer?): Tracker
---@overload fun(class: nil, undo: Undo?, count: integer?): Tracker
function System:Append(class, undo, count) end
---@overload fun(class: "Tracker", undo: Undo?): Tracker
---@overload fun(class: nil, undo: Undo?): Tracker
function System:Acquire(class, undo) end
---@overload fun(class: "Tracker", undo: Undo?): Tracker
---@overload fun(class: nil, undo: Undo?): Tracker
---@deprecated use "Acquire" instead
function System:Aquire(class, undo) end
---@overload fun(index: integer, class: "Tracker", undo: Undo?, count: integer?): Tracker
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Tracker
function System:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Tracker"): Tracker
---@overload fun(name: string, class: nil): Tracker
function System:Find(name, class) end
---@overload fun(name: string, class: "Tracker"): Tracker
---@overload fun(name: string, class: nil): Object
function System:FindRecursive(name, class) end
