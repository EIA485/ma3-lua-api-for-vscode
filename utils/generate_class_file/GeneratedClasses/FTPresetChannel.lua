---@meta

---@class FTPresetChannel: Object
---@field Attribute integer
---@field Fade TimeNoneEmpty
---@field Delay TimeNoneEmpty
---@field Speed TimeNoneEmpty
---@field SpeedMaster SpeedMaster
---@field Phase ValueNoneEmpty
---@field Measure ValueNoneEmpty
local FTPresetChannel = {}
---@return "FTPresetChannel"
function FTPresetChannel:GetClass() end
---@return "FTPresetValue"
function FTPresetChannel:GetChildClass() end
---@generic T : FTPresetChannel
---@param class `T`
---@return boolean
function FTPresetChannel:IsClass(class) end
---@return FTPreset
function FTPresetChannel:Parent() end
---@param index integer
---@return FTPresetValue
function FTPresetChannel:Ptr(index) end
---@return FTPresetValue[]
function FTPresetChannel:Children() end
---@return FTPresetValue?
function FTPresetChannel:CurrentChild() end
---@return 22
function FTPresetChannel:PropertyCount() end
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
---@overload fun(idx: 15): "Attribute"
---@overload fun(idx: 16): "Fade"
---@overload fun(idx: 17): "Delay"
---@overload fun(idx: 18): "Speed"
---@overload fun(idx: 19): "SpeedMaster"
---@overload fun(idx: 20): "Phase"
---@overload fun(idx: 21): "Measure"
function FTPresetChannel:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16|17|18): {ExportIgnore: False, EnumCollection: TimeNoneEmpty, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 19): {ExportIgnore: False, EnumCollection: SpeedMaster, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 20|21): {ExportIgnore: False, EnumCollection: ValueNoneEmpty, ReadOnly: False, ImportIgnore: False}
function FTPresetChannel:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16|17|18): "Int64Time"
---@overload fun(idx: 19): "UInt8"
---@overload fun(idx: 20|21): "Int32"
function FTPresetChannel:PropertyType(idx) end
---@overload fun(name: "SpeedMaster", role: nil): SpeedMaster
---@overload fun(name: "Fade"|"Delay"|"Speed", role: nil): TimeNoneEmpty
---@overload fun(name: "Phase"|"Measure", role: nil): ValueNoneEmpty
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Attribute", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attribute"|"Fade"|"Delay"|"Speed"|"SpeedMaster"|"Phase"|"Measure", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FTPresetValue
function FTPresetChannel:Get(name, role) end
function FTPresetChannel:Create(index, class, undo) end
function FTPresetChannel:Append(class, undo, count) end
function FTPresetChannel:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function FTPresetChannel:Aquire(class, undo) end
function FTPresetChannel:Insert(index, class, undo, count) end
function FTPresetChannel:Find(class, undo) end
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Fade"|"Delay"|"Speed", property_value: TimeNoneEmpty, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Phase"|"Measure", property_value: ValueNoneEmpty, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Attribute", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function FTPresetChannel:Set(property_name, property_value, override_change_level) end
function FTPresetChannel:SetChildren(property_name, property_value) end
function FTPresetChannel:SetChildrenRecursive(property_name, property_value) end