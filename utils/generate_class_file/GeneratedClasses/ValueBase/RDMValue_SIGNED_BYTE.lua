---@meta

---@class RDMValue_SIGNED_BYTE: ValueBase
---@field Value integer
local RDMValue_SIGNED_BYTE = {}
---@return "RDMValue_SIGNED_BYTE"
function RDMValue_SIGNED_BYTE:GetClass() end
---@return "Object"
function RDMValue_SIGNED_BYTE:GetChildClass() end
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
function RDMValue_SIGNED_BYTE:Get(name, role) end
