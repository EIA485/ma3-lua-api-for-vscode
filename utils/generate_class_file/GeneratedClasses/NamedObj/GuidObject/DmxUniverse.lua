---@meta

---@class DmxUniverse: GuidObject Represents a DMX universe.
---@field Name string
---@field Merge
Mode DMXMergeMode
---@field Request integer
---@field Granted integer
---@field Port
Out integer
---@field Port
In integer
---@field Port
RDM integer
---@field Coarse
Params integer
---@field Used integer
---@field ParkedCount integer
---@field TesterCount integer
---@field PatchInfo Container.Array<class DMX.PatchInfo, 512>
local DmxUniverse = {
    ["Merge
Mode"]="Prio",
    Request="Auto",
    ["Coarse
Params"]="0",
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
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "Merge
Mode", role: nil): DMXMergeMode
---@overload fun(name: "Request"|"Granted"|"Port
Out"|"Port
In"|"Port
RDM"|"Coarse
Params"|"Used"|"ParkedCount"|"TesterCount", role: nil): integer
---@overload fun(name: "PatchInfo", role: nil): Container.Array<class DMX.PatchInfo, 512>
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Name"|"Merge
Mode"|"Request"|"Granted"|"Port
Out"|"Port
In"|"Port
RDM"|"Coarse
Params"|"Used"|"ParkedCount"|"TesterCount"|"PatchInfo", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DMX
function DmxUniverse:Get(name, role) end
---@overload fun(index: integer, class: "DMX", undo: Undo?): DMX
---@overload fun(index: integer, class: nil, undo: Undo?): DMX
function DmxUniverse:Create(index, class, undo) end
---@overload fun(class: "DMX", undo: Undo?, count: integer?): DMX
---@overload fun(class: nil, undo: Undo?, count: integer?): DMX
function DmxUniverse:Append(class, undo, count) end
---@overload fun(class: "DMX", undo: Undo?): DMX
---@overload fun(class: nil, undo: Undo?): DMX
function DmxUniverse:Acquire(class, undo) end
---@overload fun(class: "DMX", undo: Undo?): DMX
---@overload fun(class: nil, undo: Undo?): DMX
---@deprecated use "Acquire" instead
function DmxUniverse:Aquire(class, undo) end
---@overload fun(index: integer, class: "DMX", undo: Undo?, count: integer?): DMX
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMX
function DmxUniverse:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DMX"): DMX
---@overload fun(name: string, class: nil): DMX
function DmxUniverse:Find(name, class) end
---@overload fun(name: string, class: "DMX"): DMX
---@overload fun(name: string, class: nil): Object
function DmxUniverse:FindRecursive(name, class) end
