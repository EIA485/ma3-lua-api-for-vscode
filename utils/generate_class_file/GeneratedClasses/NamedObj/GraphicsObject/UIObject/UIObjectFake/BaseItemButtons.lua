---@meta

---@class BaseItemButtons: UIObjectFake
local BaseItemButtons = {}
---@return "BaseItemButtons"
function BaseItemButtons:GetClass() end
---@return "BaseItemButton"
function BaseItemButtons:GetChildClass() end
---@param index integer
---@return BaseItemButton
function BaseItemButtons:Ptr(index) end
---@return BaseItemButton[]
function BaseItemButtons:Children() end
---@return BaseItemButton?
function BaseItemButtons:CurrentChild() end
---@overload fun(name: integer, role: nil): BaseItemButton
function BaseItemButtons:Get(name, role) end
---@generic T : BaseItemButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Create(index, class, undo) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): BaseItemButton
function BaseItemButtons:Append(class, undo, count) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Acquire(class, undo) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BaseItemButton
---@deprecated use "Acquire" instead
function BaseItemButtons:Aquire(class, undo) end
---@generic T : BaseItemButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BaseItemButton
function BaseItemButtons:Insert(index, class, undo, count) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Find(class, undo) end