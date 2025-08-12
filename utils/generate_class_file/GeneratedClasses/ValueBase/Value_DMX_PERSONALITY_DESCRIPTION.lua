---@meta

---@class Value_DMX_PERSONALITY_DESCRIPTION: ValueBase
---@field FootPrint integer
---@field Description string
local Value_DMX_PERSONALITY_DESCRIPTION = {}
---@return "Value_DMX_PERSONALITY_DESCRIPTION"
function Value_DMX_PERSONALITY_DESCRIPTION:GetClass() end
---@return "Object"
function Value_DMX_PERSONALITY_DESCRIPTION:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Threshold
Operator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FootPrint", role: nil): integer
---@overload fun(name: "Description", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Threshold
Operator"|"FootPrint"|"Description", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_DMX_PERSONALITY_DESCRIPTION:Get(name, role) end
