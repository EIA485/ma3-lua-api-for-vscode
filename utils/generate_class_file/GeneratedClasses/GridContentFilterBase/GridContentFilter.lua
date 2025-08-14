---@meta

---@class GridContentFilter: GridContentFilterBase
---@field Mode AgendaMode
local GridContentFilter = {
    Mode="And"
}
---@return "GridContentFilter"
function GridContentFilter:GetClass() end
---@return "GridContentFilterItem"
function GridContentFilter:GetChildClass() end
---@param index integer
---@return GridContentFilterItem
function GridContentFilter:Ptr(index) end
---@return GridContentFilterItem[]
function GridContentFilter:Children() end
---@return GridContentFilterItem?
function GridContentFilter:CurrentChild() end
---@overload fun(name: "Mode", role: nil): AgendaMode
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Mode"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GridContentFilterItem
function GridContentFilter:Get(name, role) end
---@generic T : AssignmentEditorFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "GridContentFilterItem", undo: Undo?): GridContentFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?): GridContentFilterItem
function GridContentFilter:Create(index, class, undo) end
---@generic T : AssignmentEditorFilterItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "GridContentFilterItem", undo: Undo?, count: integer?): GridContentFilterItem
---@overload fun(class: nil, undo: Undo?, count: integer?): GridContentFilterItem
function GridContentFilter:Append(class, undo, count) end
---@generic T : AssignmentEditorFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GridContentFilterItem", undo: Undo?): GridContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridContentFilterItem
function GridContentFilter:Acquire(class, undo) end
---@generic T : AssignmentEditorFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GridContentFilterItem", undo: Undo?): GridContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridContentFilterItem
---@deprecated use "Acquire" instead
function GridContentFilter:Aquire(class, undo) end
---@generic T : AssignmentEditorFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "GridContentFilterItem", undo: Undo?, count: integer?): GridContentFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridContentFilterItem
function GridContentFilter:Insert(index, class, undo, count) end
---@generic T : AssignmentEditorFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GridContentFilterItem", undo: Undo?): GridContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridContentFilterItem
function GridContentFilter:Find(class, undo) end