---@meta

---@class Value_ASCII: ValueBase
---@field Value string
local Value_ASCII = {}
---@return "Value_ASCII"
function Value_ASCII:GetClass() end
---@return "Object"
function Value_ASCII:GetChildClass() end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Value"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Value"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_ASCII:Get(name, role) end