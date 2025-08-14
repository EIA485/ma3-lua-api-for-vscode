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
---@field DMXPriority integer
local System = {
    Requested="No",
    MapX="X",
    MapY="Y",
    MapZ="Z",
    InvX="No",
    InvY="No",
    InvZ="No",
    DMXPriority="LTP"
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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "SenderIP"|"MulticastIP", role: nil): Manet.IP4
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Requested"|"Port"|"MapX"|"MapY"|"MapZ"|"InvX"|"InvY"|"InvZ"|"MergeMode"|"DMXPriority"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "SenderIP"|"Requested"|"Port"|"MulticastIP"|"MapX"|"MapY"|"MapZ"|"InvX"|"InvY"|"InvZ"|"MergeMode"|"DMXPriority"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Tracker
function System:Get(name, role) end
---@generic T : Tracker
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Tracker
function System:Create(index, class, undo) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Tracker
function System:Append(class, undo, count) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tracker
function System:Acquire(class, undo) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tracker
---@deprecated use "Acquire" instead
function System:Aquire(class, undo) end
---@generic T : Tracker
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Tracker
function System:Insert(index, class, undo, count) end
---@generic T : Tracker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Tracker
function System:Find(class, undo) end