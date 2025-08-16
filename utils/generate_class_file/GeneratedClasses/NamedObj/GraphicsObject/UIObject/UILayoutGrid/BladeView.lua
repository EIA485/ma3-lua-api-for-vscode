---@meta

---@class BladeView: UILayoutGrid
local BladeView = {}
---@return "BladeView"
function BladeView:GetClass() end
---@return "BladeViewButton"
function BladeView:GetChildClass() end
---@generic T : BladeView
---@param class `T`
---@return boolean
function BladeView:IsClass(class) end
---@param index integer
---@return BladeViewButton
function BladeView:Ptr(index) end
---@return BladeViewButton[]
function BladeView:Children() end
---@return BladeViewButton?
function BladeView:CurrentChild() end
---@overload fun(name: integer, role: nil): BladeViewButton
function BladeView:Get(name, role) end
---@generic T : BladeViewButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): BladeViewButton
function BladeView:Create(index, class, undo) end
---@generic T : BladeViewButton
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): BladeViewButton
function BladeView:Append(class, undo, count) end
---@generic T : BladeViewButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BladeViewButton
function BladeView:Acquire(class, undo) end
---@generic T : BladeViewButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BladeViewButton
---@deprecated use "Acquire" instead
function BladeView:Aquire(class, undo) end
---@generic T : BladeViewButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BladeViewButton
function BladeView:Insert(index, class, undo, count) end
---@generic T : BladeViewButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BladeViewButton
function BladeView:Find(class, undo) end
function BladeView:SetChildren(property_name, property_value) end