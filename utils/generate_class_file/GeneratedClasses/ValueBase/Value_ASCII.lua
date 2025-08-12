---@meta

---@class Value_ASCII: ValueBase
---@field Value string
local Value_ASCII = {}
---@return "Value_ASCII"
function Value_ASCII:GetClass() end
---@return "Object"
function Value_ASCII:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Threshold
Operator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Value", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Threshold
Operator"|"Value", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_ASCII:Get(name, role) end
