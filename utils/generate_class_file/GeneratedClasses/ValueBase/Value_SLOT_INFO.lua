---@meta

---@class Value_SLOT_INFO: ValueBase
---@field Offset integer
---@field Type RDMSlotType
---@field SlotLabelID RDMSlotId
local Value_SLOT_INFO = {}
---@return "Value_SLOT_INFO"
function Value_SLOT_INFO:GetClass() end
---@return "Object"
function Value_SLOT_INFO:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Threshold
Operator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Offset", role: nil): integer
---@overload fun(name: "Type", role: nil): RDMSlotType
---@overload fun(name: "SlotLabelID", role: nil): RDMSlotId
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Threshold
Operator"|"Offset"|"Type"|"SlotLabelID", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_SLOT_INFO:Get(name, role) end
