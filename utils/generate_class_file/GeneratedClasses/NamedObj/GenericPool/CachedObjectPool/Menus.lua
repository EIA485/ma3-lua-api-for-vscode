---@meta

---@class Menus: CachedObjectPool
local Menus = {}
---@return "Menus"
function Menus:GetClass() end
---@return "Menu"
function Menus:GetChildClass() end
---@return Root
function Menus:Parent() end
---@param index integer
---@return Menu
function Menus:Ptr(index) end
---@return Menu[]
function Menus:Children() end
---@return Menu?
function Menus:CurrentChild() end
---@overload fun(name: integer, role: nil): Menu
function Menus:Get(name, role) end
---@generic T : Menu
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Menu
function Menus:Create(index, class, undo) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Menu
function Menus:Append(class, undo, count) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Menu
function Menus:Acquire(class, undo) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Menu
---@deprecated use "Acquire" instead
function Menus:Aquire(class, undo) end
---@generic T : Menu
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Menu
function Menus:Insert(index, class, undo, count) end
---@generic T : Menu
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Menu
function Menus:Find(class, undo) end