---@meta

---@class Value_UNSIGNED_WORD: ValueBase
---@field Value integer
local Value_UNSIGNED_WORD = {}
---@return "Value_UNSIGNED_WORD"
function Value_UNSIGNED_WORD:GetClass() end
---@return "Object"
function Value_UNSIGNED_WORD:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Threshold
Operator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Value", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Threshold
Operator"|"Value", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_UNSIGNED_WORD:Get(name, role) end
