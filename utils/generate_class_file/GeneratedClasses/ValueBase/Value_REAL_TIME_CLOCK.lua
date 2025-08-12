---@meta

---@class Value_REAL_TIME_CLOCK: ValueBase
---@field Year integer
---@field Month integer
---@field Day integer
---@field Hours integer
---@field Minute integer
---@field Second integer
local Value_REAL_TIME_CLOCK = {}
---@return "Value_REAL_TIME_CLOCK"
function Value_REAL_TIME_CLOCK:GetClass() end
---@return "Object"
function Value_REAL_TIME_CLOCK:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Threshold
Operator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Year"|"Month"|"Day"|"Hours"|"Minute"|"Second", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Threshold
Operator"|"Year"|"Month"|"Day"|"Hours"|"Minute"|"Second", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_REAL_TIME_CLOCK:Get(name, role) end
