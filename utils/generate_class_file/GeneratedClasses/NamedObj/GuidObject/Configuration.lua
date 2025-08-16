---@meta

---@class Configuration: GuidObject
---@field Width integer
---@field Height integer
---@field ExecConfigType ExecConfigType
local Configuration = {
    Width="1",
    Height="1",
    ExecConfigType="Sequence"
}
---@return "Configuration"
function Configuration:GetClass() end
---@return "ConfigEntry"
function Configuration:GetChildClass() end
---@generic T : Configuration
---@param class `T`
---@return boolean
function Configuration:IsClass(class) end
---@return Configurations
function Configuration:Parent() end
---@param index integer
---@return ConfigEntry
function Configuration:Ptr(index) end
---@return ConfigEntry[]
function Configuration:Children() end
---@return ConfigEntry?
function Configuration:CurrentChild() end
---@return 23
function Configuration:PropertyCount() end
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
---@overload fun(idx: 20): "Width"
---@overload fun(idx: 21): "Height"
---@overload fun(idx: 22): "ExecConfigType"
function Configuration:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|21): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 22): {ExportIgnore: False, EnumCollection: ExecConfigType, ReadOnly: False, ImportIgnore: False}
function Configuration:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8): "UInt32"
---@overload fun(idx: 7|12|17|18): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 20|21|22): "UInt8"
function Configuration:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "ExecConfigType", role: nil): ExecConfigType
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Width"|"Height", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Width"|"Height"|"ExecConfigType", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ConfigEntry
function Configuration:Get(name, role) end
---@generic T : ConfigEntry
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ConfigEntry
function Configuration:Create(index, class, undo) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ConfigEntry
function Configuration:Append(class, undo, count) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ConfigEntry
function Configuration:Acquire(class, undo) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ConfigEntry
---@deprecated use "Acquire" instead
function Configuration:Aquire(class, undo) end
---@generic T : ConfigEntry
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ConfigEntry
function Configuration:Insert(index, class, undo, count) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ConfigEntry
function Configuration:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ExecConfigType", property_value: ExecConfigType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Width"|"Height", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function Configuration:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Fader", property_value: AssignmentFaderFunctions)
---@overload fun(property_name: "Fader", property_value: AssignmentFaderFunctions)
---@overload fun(property_name: "Fallback"|"Column"|"Row"|"Key"|"Width"|"EncoderClick"|"Height"|"EncoderRight"|"EncoderLeft", property_value: string)
function Configuration:SetChildren(property_name, property_value) end