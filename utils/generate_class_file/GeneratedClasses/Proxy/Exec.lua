---@meta

---@class Exec: Proxy An executor represents some assignable hardkeys. Beside from that, it will proxy through all functionality to an assigned object.
---@field Width integer
---@field Height integer
---@field IsXKey YesNo|boolean
---@field Object Object
---@field ExecutorConfiguration Configuration
---@field TotalPrimaryAssignmentChanged integer
---@field TotalSecondaryAssignmentChanged integer
local Exec = {
    Width="1",
    Height="1",
    IsXKey="No"
}
---@return "Exec"
function Exec:GetClass() end
---@return "Object"
function Exec:GetChildClass() end
---@generic T : Exec
---@param class `T`
---@return boolean
function Exec:IsClass(class) end
---@return 25
function Exec:PropertyCount() end
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
---@overload fun(idx: 15): "PrimaryAssignmentChanged"
---@overload fun(idx: 16): "SecondaryAssignmentChanged"
---@overload fun(idx: 17): "Exec"
---@overload fun(idx: 18): "Width"
---@overload fun(idx: 19): "Height"
---@overload fun(idx: 20): "IsXKey"
---@overload fun(idx: 21): "Object"
---@overload fun(idx: 22): "ExecutorConfiguration"
---@overload fun(idx: 23): "TotalPrimaryAssignmentChanged"
---@overload fun(idx: 24): "TotalSecondaryAssignmentChanged"
function Exec:PropertyName(idx) end
---@overload fun(idx: 0|1|2|20): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|16|17|23|24): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|18|19|21|22): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Exec:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15|16|23|24): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|20): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 17|21|22): "Handle"
---@overload fun(idx: 18|19): "UInt8"
function Exec:PropertyType(idx) end
---@overload fun(name: "ExecutorConfiguration", role: nil): Configuration
---@overload fun(name: "Exec", role: nil): Exec
---@overload fun(name: "Object", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"IsXKey", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged"|"Width"|"Height"|"TotalPrimaryAssignmentChanged"|"TotalSecondaryAssignmentChanged", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged"|"Exec"|"Width"|"Height"|"IsXKey"|"Object"|"ExecutorConfiguration"|"TotalPrimaryAssignmentChanged"|"TotalSecondaryAssignmentChanged", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Exec:Get(name, role) end
---@overload fun(property_name: "ExecutorConfiguration", property_value: Configuration, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Exec", property_value: Exec, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Object", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"IsXKey", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged"|"Width"|"Height"|"TotalPrimaryAssignmentChanged"|"TotalSecondaryAssignmentChanged", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Exec:Set(property_name, property_value, override_change_level) end