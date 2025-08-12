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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Mode", role: nil): AgendaMode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Mode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GridContentFilterItem
function GridContentFilter:Get(name, role) end
---@overload fun(index: integer, class: "GridContentFilterItem", undo: Undo?): GridContentFilterItem
---@overload fun(index: integer, class: "AssignmentEditorFilterItem", undo: Undo?): AssignmentEditorFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?): GridContentFilterItem
function GridContentFilter:Create(index, class, undo) end
---@overload fun(class: "GridContentFilterItem", undo: Undo?, count: integer?): GridContentFilterItem
---@overload fun(class: "AssignmentEditorFilterItem", undo: Undo?, count: integer?): AssignmentEditorFilterItem
---@overload fun(class: nil, undo: Undo?, count: integer?): GridContentFilterItem
function GridContentFilter:Append(class, undo, count) end
---@overload fun(class: "GridContentFilterItem", undo: Undo?): GridContentFilterItem
---@overload fun(class: "AssignmentEditorFilterItem", undo: Undo?): AssignmentEditorFilterItem
---@overload fun(class: nil, undo: Undo?): GridContentFilterItem
function GridContentFilter:Acquire(class, undo) end
---@overload fun(class: "GridContentFilterItem", undo: Undo?): GridContentFilterItem
---@overload fun(class: "AssignmentEditorFilterItem", undo: Undo?): AssignmentEditorFilterItem
---@overload fun(class: nil, undo: Undo?): GridContentFilterItem
---@deprecated use "Acquire" instead
function GridContentFilter:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridContentFilterItem", undo: Undo?, count: integer?): GridContentFilterItem
---@overload fun(index: integer, class: "AssignmentEditorFilterItem", undo: Undo?, count: integer?): AssignmentEditorFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridContentFilterItem
function GridContentFilter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GridContentFilterItem"): GridContentFilterItem
---@overload fun(name: string, class: "AssignmentEditorFilterItem"): AssignmentEditorFilterItem
---@overload fun(name: string, class: nil): GridContentFilterItem
function GridContentFilter:Find(name, class) end
---@overload fun(name: string, class: "GridContentFilterItem"): GridContentFilterItem
---@overload fun(name: string, class: "AssignmentEditorFilterItem"): AssignmentEditorFilterItem
---@overload fun(name: string, class: nil): Object
function GridContentFilter:FindRecursive(name, class) end
