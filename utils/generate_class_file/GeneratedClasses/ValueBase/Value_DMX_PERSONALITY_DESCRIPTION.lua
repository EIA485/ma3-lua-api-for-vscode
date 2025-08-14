---@meta

---@class Value_DMX_PERSONALITY_DESCRIPTION: ValueBase
---@field FootPrint integer
---@field Description string
local Value_DMX_PERSONALITY_DESCRIPTION = {}
---@return "Value_DMX_PERSONALITY_DESCRIPTION"
function Value_DMX_PERSONALITY_DESCRIPTION:GetClass() end
---@return "Object"
function Value_DMX_PERSONALITY_DESCRIPTION:GetChildClass() end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FootPrint"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Description"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "FootPrint"|"Description"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_DMX_PERSONALITY_DESCRIPTION:Get(name, role) end