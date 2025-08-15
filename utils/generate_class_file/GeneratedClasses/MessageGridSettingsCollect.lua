---@meta

---@class MessageGridSettingsCollect: Object
local MessageGridSettingsCollect = {}
---@return "MessageGridSettingsCollect"
function MessageGridSettingsCollect:GetClass() end
---@return "MessageGridSettings"
function MessageGridSettingsCollect:GetChildClass() end
---@generic T : MessageGridSettingsCollect
---@param class `T`
---@return boolean
function MessageGridSettingsCollect:IsClass(class) end
---@param index integer
---@return MessageGridSettings
function MessageGridSettingsCollect:Ptr(index) end
---@return MessageGridSettings[]
function MessageGridSettingsCollect:Children() end
---@return MessageGridSettings?
function MessageGridSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): MessageGridSettings
function MessageGridSettingsCollect:Get(name, role) end
---@generic T : MessageGridSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MessageGridSettings
function MessageGridSettingsCollect:Create(index, class, undo) end
---@generic T : MessageGridSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MessageGridSettings
function MessageGridSettingsCollect:Append(class, undo, count) end
---@generic T : MessageGridSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageGridSettings
function MessageGridSettingsCollect:Acquire(class, undo) end
---@generic T : MessageGridSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageGridSettings
---@deprecated use "Acquire" instead
function MessageGridSettingsCollect:Aquire(class, undo) end
---@generic T : MessageGridSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessageGridSettings
function MessageGridSettingsCollect:Insert(index, class, undo, count) end
---@generic T : MessageGridSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageGridSettings
function MessageGridSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "Priority", property_value: MessagePriority)
---@overload fun(property_name: "Category", property_value: MessageCategory)
---@overload fun(property_name: "Category", property_value: MessageCategory)
---@overload fun(property_name: "Priority", property_value: MessagePriority)
function MessageGridSettingsCollect:Category(property_name, property_value) end