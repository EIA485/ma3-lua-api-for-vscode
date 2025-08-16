---@meta

---@class MessageCategory: Object
---@field CreateNotification YesNo|boolean
local MessageCategory = {
    CreateNotification="false"
}
---@return "MessageCategory"
function MessageCategory:GetClass() end
---@return "MessagePriority"
function MessageCategory:GetChildClass() end
---@generic T : MessageCategory
---@param class `T`
---@return boolean
function MessageCategory:IsClass(class) end
---@return MessageCenter
function MessageCategory:Parent() end
---@param index integer
---@return MessagePriority
function MessageCategory:Ptr(index) end
---@return MessagePriority[]
function MessageCategory:Children() end
---@return MessagePriority?
function MessageCategory:CurrentChild() end
---@return 16
function MessageCategory:PropertyCount() end
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
---@overload fun(idx: 15): "CreateNotification"
function MessageCategory:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function MessageCategory:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function MessageCategory:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"CreateNotification", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"CreateNotification", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MessagePriority
function MessageCategory:Get(name, role) end
---@generic T : MessagePriority
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MessagePriority
function MessageCategory:Create(index, class, undo) end
---@generic T : MessagePriority
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MessagePriority
function MessageCategory:Append(class, undo, count) end
---@generic T : MessagePriority
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessagePriority
function MessageCategory:Acquire(class, undo) end
---@generic T : MessagePriority
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessagePriority
---@deprecated use "Acquire" instead
function MessageCategory:Aquire(class, undo) end
---@generic T : MessagePriority
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessagePriority
function MessageCategory:Insert(index, class, undo, count) end
---@generic T : MessagePriority
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessagePriority
function MessageCategory:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"CreateNotification", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function MessageCategory:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "CreateNotification", property_value: YesNo|boolean)
---@overload fun(property_name: "Count", property_value: integer)
---@overload fun(property_name: "CreateNotification", property_value: YesNo|boolean)
---@overload fun(property_name: "Count", property_value: integer)
function MessageCategory:SetChildren(property_name, property_value) end