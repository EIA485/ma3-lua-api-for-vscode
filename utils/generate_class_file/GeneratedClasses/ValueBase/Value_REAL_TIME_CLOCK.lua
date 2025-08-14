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
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Year"|"Month"|"Day"|"Hours"|"Minute"|"Second"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Year"|"Month"|"Day"|"Hours"|"Minute"|"Second"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_REAL_TIME_CLOCK:Get(name, role) end