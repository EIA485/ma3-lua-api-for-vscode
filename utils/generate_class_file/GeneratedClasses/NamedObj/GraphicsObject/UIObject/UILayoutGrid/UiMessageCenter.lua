---@meta

---@class UiMessageCenter: UILayoutGrid
local UiMessageCenter = {}
---@return "UiMessageCenter"
function UiMessageCenter:GetClass() end
---@return "MessageCenterButton"
function UiMessageCenter:GetChildClass() end
---@param index integer
---@return MessageCenterButton
function UiMessageCenter:Ptr(index) end
---@return MessageCenterButton[]
function UiMessageCenter:Children() end
---@return MessageCenterButton?
function UiMessageCenter:CurrentChild() end
---@overload fun(name: integer, role: nil): MessageCenterButton
function UiMessageCenter:Get(name, role) end
---@generic T : MessageCenterButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MessageCenterButton
function UiMessageCenter:Create(index, class, undo) end
---@generic T : MessageCenterButton
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MessageCenterButton
function UiMessageCenter:Append(class, undo, count) end
---@generic T : MessageCenterButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageCenterButton
function UiMessageCenter:Acquire(class, undo) end
---@generic T : MessageCenterButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageCenterButton
---@deprecated use "Acquire" instead
function UiMessageCenter:Aquire(class, undo) end
---@generic T : MessageCenterButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessageCenterButton
function UiMessageCenter:Insert(index, class, undo, count) end
---@generic T : MessageCenterButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MessageCenterButton
function UiMessageCenter:Find(class, undo) end