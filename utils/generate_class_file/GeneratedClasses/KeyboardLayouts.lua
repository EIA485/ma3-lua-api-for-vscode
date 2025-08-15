---@meta

---@class KeyboardLayouts: Object
local KeyboardLayouts = {}
---@return "KeyboardLayouts"
function KeyboardLayouts:GetClass() end
---@return "KeyboardLayout"
function KeyboardLayouts:GetChildClass() end
---@generic T : KeyboardLayouts
---@param class `T`
---@return boolean
function KeyboardLayouts:IsClass(class) end
---@param index integer
---@return KeyboardLayout
function KeyboardLayouts:Ptr(index) end
---@return KeyboardLayout[]
function KeyboardLayouts:Children() end
---@return KeyboardLayout?
function KeyboardLayouts:CurrentChild() end
---@overload fun(name: integer, role: nil): KeyboardLayout
function KeyboardLayouts:Get(name, role) end
---@generic T : KeyboardLayout
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): KeyboardLayout
function KeyboardLayouts:Create(index, class, undo) end
---@generic T : KeyboardLayout
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyboardLayout
function KeyboardLayouts:Append(class, undo, count) end
---@generic T : KeyboardLayout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardLayout
function KeyboardLayouts:Acquire(class, undo) end
---@generic T : KeyboardLayout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardLayout
---@deprecated use "Acquire" instead
function KeyboardLayouts:Aquire(class, undo) end
---@generic T : KeyboardLayout
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyboardLayout
function KeyboardLayouts:Insert(index, class, undo, count) end
---@generic T : KeyboardLayout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardLayout
function KeyboardLayouts:Find(class, undo) end
---@overload fun(property_name: "ShortName", property_value: string)
---@overload fun(property_name: "ShortName", property_value: string)
function KeyboardLayouts:ShortName(property_name, property_value) end