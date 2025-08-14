---@meta

---@class Value_SENSOR_DEFINITION: ValueBase
---@field Type RDMSensorType
---@field Unit Pretty RDMSensorUnit
---@field Prefix PrettyRDMSensorUnitPrefix
---@field RangeMinValue integer
---@field RangeMaxValue integer
---@field NormalMinValue integer
---@field NormalMaxValue integer
---@field LowestHighestDetectionSupported boolean
---@field RecordValueSupported boolean
---@field Description string
local Value_SENSOR_DEFINITION = {}
---@return "Value_SENSOR_DEFINITION"
function Value_SENSOR_DEFINITION:GetClass() end
---@return "Object"
function Value_SENSOR_DEFINITION:GetChildClass() end
---@overload fun(name: "Unit", role: nil): Pretty RDMSensorUnit
---@overload fun(name: "Prefix", role: nil): PrettyRDMSensorUnitPrefix
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Type", role: nil): RDMSensorType
---@overload fun(name: "LowestHighestDetectionSupported"|"RecordValueSupported"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "RangeMinValue"|"RangeMaxValue"|"NormalMinValue"|"NormalMaxValue"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Description"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Type"|"Unit"|"Prefix"|"RangeMinValue"|"RangeMaxValue"|"NormalMinValue"|"NormalMaxValue"|"LowestHighestDetectionSupported"|"RecordValueSupported"|"Description"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_SENSOR_DEFINITION:Get(name, role) end