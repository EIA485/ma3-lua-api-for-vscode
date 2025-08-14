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
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "SlotLabelID", role: nil): RDMSlotId
---@overload fun(name: "Type", role: nil): RDMSlotType
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Offset"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Offset"|"Type"|"SlotLabelID"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_SLOT_INFO:Get(name, role) end