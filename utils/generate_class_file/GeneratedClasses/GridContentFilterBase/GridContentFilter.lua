---@meta

---@class GridContentFilter: GridContentFilterBase
---@field Mode GridContentFilterMode
local GridContentFilter = {
    Mode="And"
}
---@return "GridContentFilter"
function GridContentFilter:GetClass() end
---@return "GridContentFilterItem"
function GridContentFilter:GetChildClass() end
---@generic T : GridContentFilter
---@param class `T`
---@return boolean
function GridContentFilter:IsClass(class) end
---@param index integer
---@return GridContentFilterItem
function GridContentFilter:Ptr(index) end
---@return GridContentFilterItem[]
function GridContentFilter:Children() end
---@return GridContentFilterItem?
function GridContentFilter:CurrentChild() end
---@return 16
function GridContentFilter:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "Mode"
function GridContentFilter:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: GridContentFilterMode, ReadOnly: False, ImportIgnore: False}
function GridContentFilter:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "UInt8"
function GridContentFilter:PropertyType(idx) end
---@overload fun(name: "Mode", role: nil): GridContentFilterMode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Mode", role: Enums.Roles): string
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
---@overload fun(property_name: "Mode", property_value: GridContentFilterMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function GridContentFilter:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Filter", property_value: string)
---@overload fun(property_name: "RowFilterActive", property_value: RowFilter)
---@overload fun(property_name: "Columns", property_value: string[])
---@overload fun(property_name: "RowFilterActive", property_value: RowFilter)
---@overload fun(property_name: "Equal"|"Enabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Filter", property_value: string)
---@overload fun(property_name: "Columns", property_value: string[])
function GridContentFilter:Columns(property_name, property_value) end