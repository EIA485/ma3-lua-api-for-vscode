---@meta

---@class FixtureSheetColumnAttributeFilter: GridColumnFilter
---@field FilterProgOnly YesNo|boolean
local FixtureSheetColumnAttributeFilter = {
    FilterProgOnly="No"
}
---@return "FixtureSheetColumnAttributeFilter"
function FixtureSheetColumnAttributeFilter:GetClass() end
---@return "Object"
function FixtureSheetColumnAttributeFilter:GetChildClass() end
---@generic T : FixtureSheetColumnAttributeFilter
---@param class `T`
---@return boolean
function FixtureSheetColumnAttributeFilter:IsClass(class) end
---@return 17
function FixtureSheetColumnAttributeFilter:PropertyCount() end
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
---@overload fun(idx: 15): "Inclusive"
---@overload fun(idx: 16): "FilterProgOnly"
function FixtureSheetColumnAttributeFilter:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15|16): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function FixtureSheetColumnAttributeFilter:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|16): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|15): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function FixtureSheetColumnAttributeFilter:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Inclusive"|"FilterProgOnly", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Inclusive"|"FilterProgOnly", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureSheetColumnAttributeFilter:Get(name, role) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Inclusive"|"FilterProgOnly", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function FixtureSheetColumnAttributeFilter:Set(property_name, property_value, override_change_level) end