---@meta

---@class Parameter: NamedObj Ask Andrii
---@field PID RDMPID
---@field Type RDMParameterType
---@field DataType RDMDataType
---@field Command RDMParameterCommand
---@field SensorUnit RDMSensorUnit
---@field SensorUnitPrefix RDMSensorUnitPrefix
---@field MinValue integer
---@field MaxValue integer
---@field PDLSize integer
---@field Description string
---@field DescriptionRecieved YesNo|boolean
---@field Poll YesNo|boolean
---@field UserCreated YesNo|boolean
---@field NotSupported YesNo|boolean
local Parameter = {}
---@return "Parameter"
function Parameter:GetClass() end
---@return "ValueBase"
function Parameter:GetChildClass() end
---@generic T : Parameter
---@param class `T`
---@return boolean
function Parameter:IsClass(class) end
---@return Parameters
function Parameter:Parent() end
---@param index integer
---@return ValueBase
function Parameter:Ptr(index) end
---@return ValueBase[]
function Parameter:Children() end
---@return ValueBase?
function Parameter:CurrentChild() end
---@return 29
function Parameter:PropertyCount() end
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
---@overload fun(idx: 15): "PID"
---@overload fun(idx: 16): "Type"
---@overload fun(idx: 17): "DataType"
---@overload fun(idx: 18): "Command"
---@overload fun(idx: 19): "SensorUnit"
---@overload fun(idx: 20): "SensorUnitPrefix"
---@overload fun(idx: 21): "MinValue"
---@overload fun(idx: 22): "MaxValue"
---@overload fun(idx: 23): "PDLSize"
---@overload fun(idx: 24): "Description"
---@overload fun(idx: 25): "DescriptionRecieved"
---@overload fun(idx: 26): "Poll"
---@overload fun(idx: 27): "UserCreated"
---@overload fun(idx: 28): "NotSupported"
function Parameter:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|25): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|21|22|23|24): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9|26|27|28): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: RDMPID, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: RDMParameterType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17): {ExportIgnore: False, EnumCollection: RDMDataType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 18): {ExportIgnore: False, EnumCollection: RDMParameterCommand, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 19): {ExportIgnore: False, EnumCollection: RDMSensorUnit, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: RDMSensorUnitPrefix, ReadOnly: False, ImportIgnore: False}
function Parameter:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|21|22|25|26|27|28): "UInt32"
---@overload fun(idx: 7|8|13|24): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "UInt16"
---@overload fun(idx: 16|17|18|19|20|23): "UInt8"
function Parameter:PropertyType(idx) end
---@overload fun(name: "DataType", role: nil): RDMDataType
---@overload fun(name: "PID", role: nil): RDMPID
---@overload fun(name: "Command", role: nil): RDMParameterCommand
---@overload fun(name: "Type", role: nil): RDMParameterType
---@overload fun(name: "SensorUnit", role: nil): RDMSensorUnit
---@overload fun(name: "SensorUnitPrefix", role: nil): RDMSensorUnitPrefix
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DescriptionRecieved"|"Poll"|"UserCreated"|"NotSupported", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"MinValue"|"MaxValue"|"PDLSize", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Description", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PID"|"Type"|"DataType"|"Command"|"SensorUnit"|"SensorUnitPrefix"|"MinValue"|"MaxValue"|"PDLSize"|"Description"|"DescriptionRecieved"|"Poll"|"UserCreated"|"NotSupported", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ValueBase
function Parameter:Get(name, role) end
---@generic T : ValueBase
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ValueBase
function Parameter:Create(index, class, undo) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ValueBase
function Parameter:Append(class, undo, count) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ValueBase
function Parameter:Acquire(class, undo) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ValueBase
---@deprecated use "Acquire" instead
function Parameter:Aquire(class, undo) end
---@generic T : ValueBase
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ValueBase
function Parameter:Insert(index, class, undo, count) end
---@generic T : ValueBase
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ValueBase
function Parameter:Find(class, undo) end
---@overload fun(property_name: "DataType", property_value: RDMDataType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PID", property_value: RDMPID, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Command", property_value: RDMParameterCommand, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Type", property_value: RDMParameterType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SensorUnit", property_value: RDMSensorUnit, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SensorUnitPrefix", property_value: RDMSensorUnitPrefix, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"DescriptionRecieved", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"MinValue"|"MaxValue"|"PDLSize", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Description", property_value: string, override_change_level: ChangeLevel?)
function Parameter:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Prefix", property_value: RDMSensorUnitPrefix)
---@overload fun(property_name: "Type", property_value: RDMSlotType|RDMSensorType)
---@overload fun(property_name: "SlotLabelID", property_value: RDMSlotId)
---@overload fun(property_name: "ThresholdOperator", property_value: RDMNotificationThresholdOperator)
---@overload fun(property_name: "Unit", property_value: RDMSensorUnit)
---@overload fun(property_name: "ThresholdOperator", property_value: RDMNotificationThresholdOperator)
---@overload fun(property_name: "Type", property_value: RDMSensorType)
---@overload fun(property_name: "Unit", property_value: RDMSensorUnit)
---@overload fun(property_name: "Prefix", property_value: RDMSensorUnitPrefix)
---@overload fun(property_name: "SlotLabelID", property_value: RDMSlotId)
---@overload fun(property_name: "Type", property_value: RDMSlotType)
---@overload fun(property_name: "LowestHighestDetectionSupported"|"RecordValueSupported"|"Value", property_value: TrueFalse|boolean)
---@overload fun(property_name: "RangeMaxValue"|"NormalMaxValue", property_value: UndefinedMax)
---@overload fun(property_name: "NormalMinValue"|"RangeMinValue", property_value: UndefinedMin)
---@overload fun(property_name: "Minute"|"Value"|"Second"|"Value"|"Offset"|"DefaultSlotValue"|"Value"|"Offset"|"Value"|"Value"|"Value"|"Value"|"Lowest"|"Highest"|"Recorded"|"FootPrint"|"Year"|"Month"|"Day"|"Hours", property_value: integer)
---@overload fun(property_name: "Value"|"Description"|"Description", property_value: string)
function Parameter:SetChildren(property_name, property_value) end