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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Columns", role: nil): string[]
---@overload fun(name: "Filter", role: nil): string
---@overload fun(name: "Enabled"|"Equal", role: nil): boolean
---@overload fun(name: "RowFilterActive", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Columns"|"Filter"|"Enabled"|"Equal"|"RowFilterActive", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function AssignmentEditorFilterItem:Get(name, role) end
