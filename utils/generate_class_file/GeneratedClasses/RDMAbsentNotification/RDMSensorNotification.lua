---@meta

---@class RDMSensorNotification: RDMAbsentNotification Ask Andrii
---@field SensorOffset integer
local RDMSensorNotification = {}
---@return "RDMSensorNotification"
function RDMSensorNotification:GetClass() end
---@return "ValueSensor"
function RDMSensorNotification:GetChildClass() end
---@param index integer
---@return ValueSensor
function RDMSensorNotification:Ptr(index) end
---@return ValueSensor[]
function RDMSensorNotification:Children() end
---@return ValueSensor?
function RDMSensorNotification:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"SensorOffset", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SensorOffset", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ValueSensor
function RDMSensorNotification:Get(name, role) end
