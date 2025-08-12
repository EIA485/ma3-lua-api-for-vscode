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
---@overload fun(index: integer, class: "MessageCategory", undo: Undo?): MessageCategory
---@overload fun(index: integer, class: nil, undo: Undo?): MessageCategory
function MessageCenter:Create(index, class, undo) end
---@overload fun(class: "MessageCategory", undo: Undo?, count: integer?): MessageCategory
---@overload fun(class: nil, undo: Undo?, count: integer?): MessageCategory
function MessageCenter:Append(class, undo, count) end
---@overload fun(class: "MessageCategory", undo: Undo?): MessageCategory
---@overload fun(class: nil, undo: Undo?): MessageCategory
function MessageCenter:Acquire(class, undo) end
---@overload fun(class: "MessageCategory", undo: Undo?): MessageCategory
---@overload fun(class: nil, undo: Undo?): MessageCategory
---@deprecated use "Acquire" instead
function MessageCenter:Aquire(class, undo) end
---@overload fun(index: integer, class: "MessageCategory", undo: Undo?, count: integer?): MessageCategory
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MessageCategory
function MessageCenter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MessageCategory"): MessageCategory
---@overload fun(name: string, class: nil): MessageCategory
function MessageCenter:Find(name, class) end
---@overload fun(name: string, class: "MessageCategory"): MessageCategory
---@overload fun(name: string, class: nil): Object
function MessageCenter:FindRecursive(name, class) end
