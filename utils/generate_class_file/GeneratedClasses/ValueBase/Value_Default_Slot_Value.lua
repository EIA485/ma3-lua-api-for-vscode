---@meta

---@class Value_Default_Slot_Value: ValueBase
---@field Offset integer
---@field DefaultSlotValue integer
local Value_Default_Slot_Value = {}
---@return "Value_Default_Slot_Value"
function Value_Default_Slot_Value:GetClass() end
---@return "Object"
function Value_Default_Slot_Value:GetChildClass() end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Offset"|"DefaultSlotValue"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Offset"|"DefaultSlotValue"|"ThresholdOperator"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_Default_Slot_Value:Get(name, role) end