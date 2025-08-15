---@meta

---@class DBObjectGridData: GridData
---@field HeaderRows integer
---@field DefaultToken PresetActionToken
---@field ExplorerMode YesNo|boolean
---@field UseLocalExpandedState YesNo|boolean
---@field LocalExpandedStateDefault YesNo|boolean
---@field IgnoreCmdInput YesNo|boolean
---@field ShowParentAsHintForMultiTarget YesNo|boolean
---@field FilterMask integer
---@field HierarchyFilterMask integer
---@field DefaultRole Roles
---@field CreateFrameSelection fun(cmdline: Cmdline) : integer
local DBObjectGridData = {
    HeaderRows="2",
    ExplorerMode="No",
    UseLocalExpandedState="No",
    LocalExpandedStateDefault="No",
    IgnoreCmdInput="No",
    ShowParentAsHintForMultiTarget="No",
    FilterMask="0",
    HierarchyFilterMask="0",
    DefaultRole="Default"
}
---@return "DBObjectGridData"
function DBObjectGridData:GetClass() end
---@return "Object"
function DBObjectGridData:GetChildClass() end
---@generic T : DBObjectGridData
---@param class `T`
---@return boolean
function DBObjectGridData:IsClass(class) end
---@return 26
function DBObjectGridData:PropertyCount() end
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
---@overload fun(idx: 15): "HeaderRows"
---@overload fun(idx: 16): "DefaultToken"
---@overload fun(idx: 17): "ExplorerMode"
---@overload fun(idx: 18): "UseLocalExpandedState"
---@overload fun(idx: 19): "LocalExpandedStateDefault"
---@overload fun(idx: 20): "IgnoreCmdInput"
---@overload fun(idx: 21): "ShowParentAsHintForMultiTarget"
---@overload fun(idx: 22): "FilterMask"
---@overload fun(idx: 23): "HierarchyFilterMask"
---@overload fun(idx: 24): "DefaultRole"
---@overload fun(idx: 25): "CreateFrameSelection"
function DBObjectGridData:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|17|18|19|20|21): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|22|23): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|25): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 24): {ExportIgnore: False, EnumCollection: Roles, ReadOnly: False, ImportIgnore: False}
function DBObjectGridData:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|17|18|19|20|21): "Bool"
---@overload fun(idx: 12|22|23): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16): "Token"
---@overload fun(idx: 24): "Int32"
---@overload fun(idx: 25): "Method"
function DBObjectGridData:PropertyType(idx) end
---@overload fun(name: "DefaultToken", role: nil): PresetActionToken
---@overload fun(name: "DefaultRole", role: nil): Roles
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget", role: nil): YesNo|boolean
---@overload fun(name: "CreateFrameSelection", role: nil): fun(cmdline: Cmdline) : integer
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"HeaderRows"|"FilterMask"|"HierarchyFilterMask", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"HeaderRows"|"DefaultToken"|"ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget"|"FilterMask"|"HierarchyFilterMask"|"DefaultRole"|"CreateFrameSelection", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DBObjectGridData:Get(name, role) end
---@overload fun(property_name: "DefaultToken", property_value: PresetActionToken, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DefaultRole", property_value: Roles, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"ExplorerMode"|"UseLocalExpandedState"|"LocalExpandedStateDefault"|"IgnoreCmdInput"|"ShowParentAsHintForMultiTarget", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"HeaderRows"|"FilterMask"|"HierarchyFilterMask", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function DBObjectGridData:Set(property_name, property_value, override_change_level) end