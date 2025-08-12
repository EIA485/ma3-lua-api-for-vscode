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
---@overload fun(index: integer, class: "MessageCenterButton", undo: Undo?): MessageCenterButton
---@overload fun(index: integer, class: nil, undo: Undo?): MessageCenterButton
function UiMessageCenter:Create(index, class, undo) end
---@overload fun(class: "MessageCenterButton", undo: Undo?, count: integer?): MessageCenterButton
---@overload fun(class: nil, undo: Undo?, count: integer?): MessageCenterButton
function UiMessageCenter:Append(class, undo, count) end
---@overload fun(class: "MessageCenterButton", undo: Undo?): MessageCenterButton
---@overload fun(class: nil, undo: Undo?): MessageCenterButton
function UiMessageCenter:Acquire(class, undo) end
---@overload fun(class: "MessageCenterButton", undo: Undo?): MessageCenterButton
---@overload fun(class: nil, undo: Undo?): MessageCenterButton
---@deprecated use "Acquire" instead
function UiMessageCenter:Aquire(class, undo) end
---@overload fun(index: integer, class: "MessageCenterButton", undo: Undo?, count: integer?): MessageCenterButton
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessageCenterButton
function UiMessageCenter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MessageCenterButton"): MessageCenterButton
---@overload fun(name: string, class: nil): MessageCenterButton
function UiMessageCenter:Find(name, class) end
---@overload fun(name: string, class: "MessageCenterButton"): MessageCenterButton
---@overload fun(name: string, class: nil): Object
function UiMessageCenter:FindRecursive(name, class) end
