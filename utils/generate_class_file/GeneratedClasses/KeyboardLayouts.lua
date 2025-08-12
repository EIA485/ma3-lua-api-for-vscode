---@meta

---@class KeyboardLayouts: Object
local KeyboardLayouts = {}
---@return "KeyboardLayouts"
function KeyboardLayouts:GetClass() end
---@return "KeyboardLayout"
function KeyboardLayouts:GetChildClass() end
---@param index integer
---@return KeyboardLayout
function KeyboardLayouts:Ptr(index) end
---@return KeyboardLayout[]
function KeyboardLayouts:Children() end
---@return KeyboardLayout?
function KeyboardLayouts:CurrentChild() end
---@overload fun(name: integer, role: nil): KeyboardLayout
function KeyboardLayouts:Get(name, role) end
---@overload fun(index: integer, class: "KeyboardLayout", undo: Undo?): KeyboardLayout
---@overload fun(index: integer, class: nil, undo: Undo?): KeyboardLayout
function KeyboardLayouts:Create(index, class, undo) end
---@overload fun(class: "KeyboardLayout", undo: Undo?, count: integer?): KeyboardLayout
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyboardLayout
function KeyboardLayouts:Append(class, undo, count) end
---@overload fun(class: "KeyboardLayout", undo: Undo?): KeyboardLayout
---@overload fun(class: nil, undo: Undo?): KeyboardLayout
function KeyboardLayouts:Acquire(class, undo) end
---@overload fun(class: "KeyboardLayout", undo: Undo?): KeyboardLayout
---@overload fun(class: nil, undo: Undo?): KeyboardLayout
---@deprecated use "Acquire" instead
function KeyboardLayouts:Aquire(class, undo) end
---@overload fun(index: integer, class: "KeyboardLayout", undo: Undo?, count: integer?): KeyboardLayout
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyboardLayout
function KeyboardLayouts:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "KeyboardLayout"): KeyboardLayout
---@overload fun(name: string, class: nil): KeyboardLayout
function KeyboardLayouts:Find(name, class) end
---@overload fun(name: string, class: "KeyboardLayout"): KeyboardLayout
---@overload fun(name: string, class: nil): Object
function KeyboardLayouts:FindRecursive(name, class) end
