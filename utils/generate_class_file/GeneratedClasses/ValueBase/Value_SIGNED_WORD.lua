---@meta

---@class Value_SIGNED_WORD: ValueBase
---@field Value integer
local Value_SIGNED_WORD = {}
---@return "Value_SIGNED_WORD"
function Value_SIGNED_WORD:GetClass() end
---@return "Object"
function Value_SIGNED_WORD:GetChildClass() end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Value"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Value"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_SIGNED_WORD:Get(name, role) end