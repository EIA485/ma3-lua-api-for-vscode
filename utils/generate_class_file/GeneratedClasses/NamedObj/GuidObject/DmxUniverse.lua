---@meta

---@class DmxUniverse: GuidObject Represents a DMX universe.
---@field Name string
---@field MergeMode DMXMergeMode
---@field Request integer
---@field Granted integer
---@field PortOut integer
---@field PortIn integer
---@field PortRDM integer
---@field CoarseParams integer
---@field Used integer
---@field ParkedCount integer
---@field TesterCount integer
---@field PatchInfo Container.Array<class DMX.PatchInfo, 512>
local DmxUniverse = {
    MergeMode="Prio",
    Request="Auto",
    CoarseParams="0",
    Used="0",
    ParkedCount="0",
    TesterCount="0"
}
---@return "DmxUniverse"
function DmxUniverse:GetClass() end
---@return "DMX"
function DmxUniverse:GetChildClass() end
---@return DmxUniverses
function DmxUniverse:Parent() end
---@param index integer
---@return DMX
function DmxUniverse:Ptr(index) end
---@return DMX[]
function DmxUniverse:Children() end
---@return DMX?
function DmxUniverse:CurrentChild() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "PatchInfo", role: nil): Container.Array<class DMX.PatchInfo, 512>
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "MergeMode", role: nil): DMXMergeMode
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Request"|"Granted"|"PortOut"|"PortIn"|"PortRDM"|"CoarseParams"|"Used"|"ParkedCount"|"TesterCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"NameAndApp"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Name"|"MergeMode"|"Request"|"Granted"|"PortOut"|"PortIn"|"PortRDM"|"CoarseParams"|"Used"|"ParkedCount"|"TesterCount"|"PatchInfo"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DMX
function DmxUniverse:Get(name, role) end
---@generic T : DMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMX
function DmxUniverse:Create(index, class, undo) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMX
function DmxUniverse:Append(class, undo, count) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMX
function DmxUniverse:Acquire(class, undo) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMX
---@deprecated use "Acquire" instead
function DmxUniverse:Aquire(class, undo) end
---@generic T : DMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMX
function DmxUniverse:Insert(index, class, undo, count) end
---@generic T : DMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMX
function DmxUniverse:Find(class, undo) end