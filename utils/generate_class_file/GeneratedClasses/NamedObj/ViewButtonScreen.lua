---@meta

---@class ViewButtonScreen: NamedObj
local ViewButtonScreen = {}
---@return "ViewButtonScreen"
function ViewButtonScreen:GetClass() end
---@return "ViewButton"
function ViewButtonScreen:GetChildClass() end
---@generic T : ViewButtonScreen
---@param class `T`
---@return boolean
function ViewButtonScreen:IsClass(class) end
---@return ViewButtonScreens
function ViewButtonScreen:Parent() end
---@param index integer
---@return ViewButton
function ViewButtonScreen:Ptr(index) end
---@return ViewButton[]
function ViewButtonScreen:Children() end
---@return ViewButton?
function ViewButtonScreen:CurrentChild() end
---@overload fun(name: integer, role: nil): ViewButton
function ViewButtonScreen:Get(name, role) end
---@generic T : ViewButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ViewButton
function ViewButtonScreen:Create(index, class, undo) end
---@generic T : ViewButton
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ViewButton
function ViewButtonScreen:Append(class, undo, count) end
---@generic T : ViewButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewButton
function ViewButtonScreen:Acquire(class, undo) end
---@generic T : ViewButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewButton
---@deprecated use "Acquire" instead
function ViewButtonScreen:Aquire(class, undo) end
---@generic T : ViewButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ViewButton
function ViewButtonScreen:Insert(index, class, undo, count) end
---@generic T : ViewButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewButton
function ViewButtonScreen:Find(class, undo) end
---@overload fun(property_name: "Object", property_value: Object)
---@overload fun(property_name: "Object", property_value: Object)
function ViewButtonScreen:SetChildren(property_name, property_value) end