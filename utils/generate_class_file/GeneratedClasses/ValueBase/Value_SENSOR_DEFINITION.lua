---@meta

---@class Value_SENSOR_DEFINITION: ValueBase
---@field Type RDMSensorType
---@field Unit RDMSensorUnit
---@field Prefix RDMSensorUnitPrefix
---@field RangeMinValue UndefinedMin
---@field RangeMaxValue UndefinedMax
---@field NormalMinValue UndefinedMin
---@field NormalMaxValue UndefinedMax
---@field LowestHighestDetectionSupported TrueFalse|boolean
---@field RecordValueSupported TrueFalse|boolean
---@field Description string
local Value_SENSOR_DEFINITION = {}
---@return "Value_SENSOR_DEFINITION"
function Value_SENSOR_DEFINITION:GetClass() end
---@return "Object"
function Value_SENSOR_DEFINITION:GetChildClass() end
---@generic T : Value_SENSOR_DEFINITION
---@param class `T`
---@return boolean
function Value_SENSOR_DEFINITION:IsClass(class) end
---@return 26
function Value_SENSOR_DEFINITION:PropertyCount() end
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
---@overload fun(idx: 15): "ThresholdOperator"
---@overload fun(idx: 16): "Type"
---@overload fun(idx: 17): "Unit"
---@overload fun(idx: 18): "Prefix"
---@overload fun(idx: 19): "RangeMinValue"
---@overload fun(idx: 20): "RangeMaxValue"
---@overload fun(idx: 21): "NormalMinValue"
---@overload fun(idx: 22): "NormalMaxValue"
---@overload fun(idx: 23): "LowestHighestDetectionSupported"
---@overload fun(idx: 24): "RecordValueSupported"
---@overload fun(idx: 25): "Description"
function Value_SENSOR_DEFINITION:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|25): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: RDMNotificationThresholdOperator, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: RDMSensorType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17): {ExportIgnore: False, EnumCollection: RDMSensorUnit, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 18): {ExportIgnore: False, EnumCollection: RDMSensorUnitPrefix, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 19|21): {ExportIgnore: False, EnumCollection: UndefinedMin, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 20|22): {ExportIgnore: False, EnumCollection: UndefinedMax, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 23|24): {ExportIgnore: False, EnumCollection: TrueFalse, ReadOnly: False, ImportIgnore: False}
function Value_SENSOR_DEFINITION:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|25): "String"
---@overload fun(idx: 10|11|23|24): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|16|17|18): "UInt8"
---@overload fun(idx: 19|20|21|22): "Int16"
function Value_SENSOR_DEFINITION:PropertyType(idx) end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Type", role: nil): RDMSensorType
---@overload fun(name: "Unit", role: nil): RDMSensorUnit
---@overload fun(name: "Prefix", role: nil): RDMSensorUnitPrefix
---@overload fun(name: "LowestHighestDetectionSupported"|"RecordValueSupported", role: nil): TrueFalse|boolean
---@overload fun(name: "RangeMaxValue"|"NormalMaxValue", role: nil): UndefinedMax
---@overload fun(name: "RangeMinValue"|"NormalMinValue", role: nil): UndefinedMin
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Description", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ThresholdOperator"|"Type"|"Unit"|"Prefix"|"RangeMinValue"|"RangeMaxValue"|"NormalMinValue"|"NormalMaxValue"|"LowestHighestDetectionSupported"|"RecordValueSupported"|"Description", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_SENSOR_DEFINITION:Get(name, role) end
---@overload fun(property_name: "ThresholdOperator", property_value: RDMNotificationThresholdOperator, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Type", property_value: RDMSensorType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Unit", property_value: RDMSensorUnit, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Prefix", property_value: RDMSensorUnitPrefix, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LowestHighestDetectionSupported"|"RecordValueSupported", property_value: TrueFalse|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RangeMaxValue"|"NormalMaxValue", property_value: UndefinedMax, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RangeMinValue"|"NormalMinValue", property_value: UndefinedMin, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Description", property_value: string, override_change_level: ChangeLevel?)
function Value_SENSOR_DEFINITION:Set(property_name, property_value, override_change_level) end