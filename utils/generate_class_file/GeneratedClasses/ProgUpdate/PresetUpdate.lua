---@meta

---@class PresetUpdate: ProgUpdate
---@field PresetPoolNo integer
---@field PresetPoolName string
---@field PresetNo integer
---@field PresetName string
local PresetUpdate = {}
---@return "PresetUpdate"
function PresetUpdate:GetClass() end
---@return "Object"
function PresetUpdate:GetChildClass() end
---@generic T : PresetUpdate
---@param class `T`
---@return boolean
function PresetUpdate:IsClass(class) end
---@return PresetUpdates
function PresetUpdate:Parent() end
---@return 23
function PresetUpdate:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Note"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "DataPoolNo"
---@overload fun(idx: 15): "DataPoolName"
---@overload fun(idx: 16): "Parent"
---@overload fun(idx: 17): "Name"
---@overload fun(idx: 18): "Number"
---@overload fun(idx: 19): "PresetPoolNo"
---@overload fun(idx: 20): "PresetPoolName"
---@overload fun(idx: 21): "PresetNo"
---@overload fun(idx: 22): "PresetName"
function PresetUpdate:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|14|15|16|17|18|19|20|21|22): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function PresetUpdate:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|14|19|21): "UInt32"
---@overload fun(idx: 7|12|15|16|17|18|20|22): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
function PresetUpdate:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"DataPoolNo"|"PresetPoolNo"|"PresetNo", role: nil): integer
---@overload fun(name: "Note"|"DependencyExport"|"DataPoolName"|"Parent"|"Name"|"Number"|"PresetPoolName"|"PresetName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DataPoolNo"|"DataPoolName"|"Parent"|"Name"|"Number"|"PresetPoolNo"|"PresetPoolName"|"PresetNo"|"PresetName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PresetUpdate:Get(name, role) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"DataPoolNo"|"PresetPoolNo"|"PresetNo", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Note"|"DependencyExport"|"DataPoolName"|"Parent"|"Name"|"Number"|"PresetPoolName"|"PresetName", property_value: string, override_change_level: ChangeLevel?)
function PresetUpdate:Set(property_name, property_value, override_change_level) end