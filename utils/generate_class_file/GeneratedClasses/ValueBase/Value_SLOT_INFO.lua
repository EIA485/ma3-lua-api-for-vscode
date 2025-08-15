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
---@generic T : Value_SLOT_INFO
---@param class `T`
---@return boolean
function Value_SLOT_INFO:IsClass(class) end
---@return 19
function Value_SLOT_INFO:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "ThresholdOperator"
---@overload fun(idx: 16): "Offset"
---@overload fun(idx: 17): "Type"
---@overload fun(idx: 18): "SlotLabelID"
function Value_SLOT_INFO:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|16): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: RDMNotificationThresholdOperator, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17): {ExportIgnore: True, EnumCollection: RDMSlotType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 18): {ExportIgnore: True, EnumCollection: RDMSlotId, ReadOnly: False, ImportIgnore: False}
function Value_SLOT_INFO:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|17): "UInt8"
---@overload fun(idx: 16|18): "UInt16"
function Value_SLOT_INFO:PropertyType(idx) end
---@overload fun(name: "ThresholdOperator", role: nil): RDMNotificationThresholdOperator
---@overload fun(name: "SlotLabelID", role: nil): RDMSlotId
---@overload fun(name: "Type", role: nil): RDMSlotType
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Offset", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ThresholdOperator"|"Offset"|"Type"|"SlotLabelID", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Value_SLOT_INFO:Get(name, role) end
---@overload fun(property_name: "ThresholdOperator", property_value: RDMNotificationThresholdOperator, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SlotLabelID", property_value: RDMSlotId, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Type", property_value: RDMSlotType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Offset", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Value_SLOT_INFO:Set(property_name, property_value, override_change_level) end