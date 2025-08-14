---@meta

---@class ValueSensor: ValueBase
---@field Value integer
---@field Lowest integer
---@field Highest integer
---@field Recorded integer
local ValueSensor = {
    Lowest="0",
    Highest="0",
    Recorded="0"
}
---@return "ValueSensor"
function ValueSensor:GetClass() end
---@return "Object"
function ValueSensor:GetChildClass() end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Value"|"Lowest"|"Highest"|"Recorded"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Value"|"Lowest"|"Highest"|"Recorded"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ValueSensor:Get(name, role) end