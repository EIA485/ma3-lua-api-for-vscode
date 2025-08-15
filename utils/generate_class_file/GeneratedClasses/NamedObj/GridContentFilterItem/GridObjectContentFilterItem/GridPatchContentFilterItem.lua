---@meta

---@class GridPatchContentFilterItem: GridObjectContentFilterItem
---@field PopupFilter string
local GridPatchContentFilterItem = {}
---@return "GridPatchContentFilterItem"
function GridPatchContentFilterItem:GetClass() end
---@return "Object"
function GridPatchContentFilterItem:GetChildClass() end
---@generic T : GridPatchContentFilterItem
---@param class `T`
---@return boolean
function GridPatchContentFilterItem:IsClass(class) end
---@return GridPatchContentFilter
function GridPatchContentFilterItem:Parent() end
---@return 21
function GridPatchContentFilterItem:PropertyCount() end
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
---@overload fun(idx: 15): "Columns"
---@overload fun(idx: 16): "Filter"
---@overload fun(idx: 17): "Enabled"
---@overload fun(idx: 18): "Equal"
---@overload fun(idx: 19): "Column"
---@overload fun(idx: 20): "PopupFilter"
function GridPatchContentFilterItem:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|17|18): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|20): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|19): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function GridPatchContentFilterItem:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|16|19|20): "String"
---@overload fun(idx: 10|11|17|18): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Custom"
function GridPatchContentFilterItem:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Enabled"|"Equal", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Filter"|"Column"|"PopupFilter", role: nil): string
---@overload fun(name: "Columns", role: nil): string[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Columns"|"Filter"|"Enabled"|"Equal"|"Column"|"PopupFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridPatchContentFilterItem:Get(name, role) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Enabled"|"Equal", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Filter"|"PopupFilter", property_value: string, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Columns", property_value: string[], override_change_level: ChangeLevel?)
function GridPatchContentFilterItem:Set(property_name, property_value, override_change_level) end