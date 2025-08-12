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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Threshold
Operator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Value"|"Lowest"|"Highest"|"Recorded", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Threshold
Operator"|"Value"|"Lowest"|"Highest"|"Recorded", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ValueSensor:Get(name, role) end
