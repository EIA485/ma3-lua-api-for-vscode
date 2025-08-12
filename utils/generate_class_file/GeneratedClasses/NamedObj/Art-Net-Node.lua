---@meta

---@class ArtNetNode: NamedObj
---@field IP Manet.IP4
---@field IsActive boolean
local ArtNetNode = {}
---@return "ArtNetNode"
function ArtNetNode:GetClass() end
---@return "BindIndex"
function ArtNetNode:GetChildClass() end
---@return ArtNetNodeCollect
function ArtNetNode:Parent() end
---@param index integer
---@return BindIndex
function ArtNetNode:Ptr(index) end
---@return BindIndex[]
function ArtNetNode:Children() end
---@return BindIndex?
function ArtNetNode:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "IP", role: nil): Manet.IP4
---@overload fun(name: "IsActive", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IP"|"IsActive", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): BindIndex
function ArtNetNode:Get(name, role) end
---@overload fun(index: integer, class: "BindIndex", undo: Undo?): BindIndex
---@overload fun(index: integer, class: nil, undo: Undo?): BindIndex
function ArtNetNode:Create(index, class, undo) end
---@overload fun(class: "BindIndex", undo: Undo?, count: integer?): BindIndex
---@overload fun(class: nil, undo: Undo?, count: integer?): BindIndex
function ArtNetNode:Append(class, undo, count) end
---@overload fun(class: "BindIndex", undo: Undo?): BindIndex
---@overload fun(class: nil, undo: Undo?): BindIndex
function ArtNetNode:Acquire(class, undo) end
---@overload fun(class: "BindIndex", undo: Undo?): BindIndex
---@overload fun(class: nil, undo: Undo?): BindIndex
---@deprecated use "Acquire" instead
function ArtNetNode:Aquire(class, undo) end
---@overload fun(index: integer, class: "BindIndex", undo: Undo?, count: integer?): BindIndex
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BindIndex
function ArtNetNode:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "BindIndex"): BindIndex
---@overload fun(name: string, class: nil): BindIndex
function ArtNetNode:Find(name, class) end
---@overload fun(name: string, class: "BindIndex"): BindIndex
---@overload fun(name: string, class: nil): Object
function ArtNetNode:FindRecursive(name, class) end
