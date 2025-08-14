---@meta

---@class RDMValue_UNSIGNED_BYTE: ValueBase
---@field Value integer
local RDMValue_UNSIGNED_BYTE = {}
---@return "RDMValue_UNSIGNED_BYTE"
function RDMValue_UNSIGNED_BYTE:GetClass() end
---@return "Object"
function RDMValue_UNSIGNED_BYTE:GetChildClass() end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Value"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Value"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RDMValue_UNSIGNED_BYTE:Get(name, role) end