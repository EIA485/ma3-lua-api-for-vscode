---@meta

---@class DCRemote: Remote
---@field Signal integer
local DCRemote = {}
---@return "DCRemote"
function DCRemote:GetClass() end
---@return "Object"
function DCRemote:GetChildClass() end
---@generic T : DCRemote
---@param class `T`
---@return boolean
function DCRemote:IsClass(class) end
---@return DCRemotes
function DCRemote:Parent() end
---@return 33
function DCRemote:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "Target"
---@overload fun(idx: 21): "Fader"
---@overload fun(idx: 22): "Key"
---@overload fun(idx: 23): "TriggerOn"
---@overload fun(idx: 24): "TriggerOff"
---@overload fun(idx: 25): "InFrom"
---@overload fun(idx: 26): "InTo"
---@overload fun(idx: 27): "OutFrom"
---@overload fun(idx: 28): "OutTo"
---@overload fun(idx: 29): "Enabled"
---@overload fun(idx: 30): "In"
---@overload fun(idx: 31): "Out"
---@overload fun(idx: 32): "Signal"
function DCRemote:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|29): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|30|31): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|23|24|25|26|27|28|32): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 21): {ExportIgnore: False, EnumCollection: AssignmentFaderFunctions, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 22): {ExportIgnore: False, EnumCollection: AssignmentButtonFunctions, ReadOnly: False, ImportIgnore: False}
function DCRemote:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|23|24|25|26|30|31): "UInt32"
---@overload fun(idx: 7|12|17|18): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16|20): "Handle"
---@overload fun(idx: 21|22): "Token"
---@overload fun(idx: 27|28): "Int32"
---@overload fun(idx: 29|32): "UInt8"
function DCRemote:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Key", role: nil): AssignmentButtonFunctions
---@overload fun(name: "Fader", role: nil): AssignmentFaderFunctions
---@overload fun(name: "TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"In"|"Out", role: nil): DMXPropertyValue
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Enabled", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"OutFrom"|"OutTo"|"Signal", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Target"|"Fader"|"Key"|"TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"OutFrom"|"OutTo"|"Enabled"|"In"|"Out"|"Signal", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DCRemote:Get(name, role) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Key", property_value: AssignmentButtonFunctions, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Fader", property_value: AssignmentFaderFunctions, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"In"|"Out", property_value: DMXPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Target", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Enabled", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"OutFrom"|"OutTo"|"Signal", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function DCRemote:Set(property_name, property_value, override_change_level) end