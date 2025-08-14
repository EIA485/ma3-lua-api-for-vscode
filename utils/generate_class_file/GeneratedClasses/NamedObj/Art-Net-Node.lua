---@meta

---@class ArtNetNode: NamedObj
---@field IP Manet.IP4
---@field IsActive boolean
local ArtNetNode = {}
---@return "Art-Net-Node"
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
---@overload fun(name: "IP", role: nil): Manet.IP4
---@overload fun(name: "IsActive"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IP"|"IsActive"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): BindIndex
function ArtNetNode:Get(name, role) end
---@generic T : BindIndex
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): BindIndex
function ArtNetNode:Create(index, class, undo) end
---@generic T : BindIndex
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): BindIndex
function ArtNetNode:Append(class, undo, count) end
---@generic T : BindIndex
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BindIndex
function ArtNetNode:Acquire(class, undo) end
---@generic T : BindIndex
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BindIndex
---@deprecated use "Acquire" instead
function ArtNetNode:Aquire(class, undo) end
---@generic T : BindIndex
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BindIndex
function ArtNetNode:Insert(index, class, undo, count) end
---@generic T : BindIndex
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BindIndex
function ArtNetNode:Find(class, undo) end