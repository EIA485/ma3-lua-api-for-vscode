---@meta

---@class ViewButtonScreens: Object
local ViewButtonScreens = {}
---@return "ViewButtonScreens"
function ViewButtonScreens:GetClass() end
---@return "ViewButtonScreen"
function ViewButtonScreens:GetChildClass() end
---@generic T : ViewButtonScreens
---@param class `T`
---@return boolean
function ViewButtonScreens:IsClass(class) end
---@return UserProfile
function ViewButtonScreens:Parent() end
---@param index integer
---@return ViewButtonScreen
function ViewButtonScreens:Ptr(index) end
---@return ViewButtonScreen[]
function ViewButtonScreens:Children() end
---@return ViewButtonScreen?
function ViewButtonScreens:CurrentChild() end
---@overload fun(name: integer, role: nil): ViewButtonScreen
function ViewButtonScreens:Get(name, role) end
---@generic T : ViewButtonScreen
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ViewButtonScreen
function ViewButtonScreens:Create(index, class, undo) end
---@generic T : ViewButtonScreen
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ViewButtonScreen
function ViewButtonScreens:Append(class, undo, count) end
---@generic T : ViewButtonScreen
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewButtonScreen
function ViewButtonScreens:Acquire(class, undo) end
---@generic T : ViewButtonScreen
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewButtonScreen
---@deprecated use "Acquire" instead
function ViewButtonScreens:Aquire(class, undo) end
---@generic T : ViewButtonScreen
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ViewButtonScreen
function ViewButtonScreens:Insert(index, class, undo, count) end
---@generic T : ViewButtonScreen
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewButtonScreen
function ViewButtonScreens:Find(class, undo) end
function ViewButtonScreens:SetChildren(property_name, property_value) end