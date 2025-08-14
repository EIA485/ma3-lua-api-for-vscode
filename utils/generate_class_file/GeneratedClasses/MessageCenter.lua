---@meta

---@class MessageCenter: Object
local MessageCenter = {}
---@return "MessageCenter"
function MessageCenter:GetClass() end
---@return "MessageCategory"
function MessageCenter:GetChildClass() end
---@return Root
function MessageCenter:Parent() end
---@param index integer
---@return MessageCategory
function MessageCenter:Ptr(index) end
---@return MessageCategory[]
function MessageCenter:Children() end
---@return MessageCategory?
function MessageCenter:CurrentChild() end
---@overload fun(name: integer, role: nil): MessageCategory
function MessageCenter:Get(name, role) end
---@generic T : MessageCategory
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MessageCategory
function MessageCenter:Create(index, class, undo) end
---@generic T : MessageCategory
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MessageCategory
function MessageCenter:Append(class, undo, count) end
---@generic T : MessageCategory
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageCategory
function MessageCenter:Acquire(class, undo) end
---@generic T : MessageCategory
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageCategory
---@deprecated use "Acquire" instead
function MessageCenter:Aquire(class, undo) end
---@generic T : MessageCategory
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessageCategory
function MessageCenter:Insert(index, class, undo, count) end
---@generic T : MessageCategory
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageCategory
function MessageCenter:Find(class, undo) end