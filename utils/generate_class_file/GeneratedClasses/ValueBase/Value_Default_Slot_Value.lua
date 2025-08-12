---@meta

---@class Value_Default_Slot_Value: ValueBase
---@field Offset integer
---@field DefaultSlotValue integer
local Value_Default_Slot_Value = {}
---@return "Value_Default_Slot_Value"
function Value_Default_Slot_Value:GetClass() end
---@return "Object"
function Value_Default_Slot_Value:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Threshold
Operator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "Offset"|"DefaultSlotValue", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Threshold
Operator"|"Offset"|"DefaultSlotValue", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_Default_Slot_Value:Get(name, role) end
