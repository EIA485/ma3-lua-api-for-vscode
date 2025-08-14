---@meta

---@class AssignmentEditorFilterItem: GridContentFilterItem
---@field RowFilterActive integer
local AssignmentEditorFilterItem = {
    RowFilterActive="All"
}
---@return "AssignmentEditorFilterItem"
function AssignmentEditorFilterItem:GetClass() end
---@return "Object"
function AssignmentEditorFilterItem:GetChildClass() end
---@overload fun(name: "Enabled"|"Equal"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "RowFilterActive"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Filter"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Columns", role: nil): string[]
---@overload fun(name: "RowFilterActive"|"Columns"|"Filter"|"Enabled"|"Equal"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function AssignmentEditorFilterItem:Get(name, role) end