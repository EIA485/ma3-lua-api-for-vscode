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
---@overload fun(index: integer, class: "Menu", undo: Undo?): Menu
---@overload fun(index: integer, class: nil, undo: Undo?): Menu
function Menus:Create(index, class, undo) end
---@overload fun(class: "Menu", undo: Undo?, count: integer?): Menu
---@overload fun(class: nil, undo: Undo?, count: integer?): Menu
function Menus:Append(class, undo, count) end
---@overload fun(class: "Menu", undo: Undo?): Menu
---@overload fun(class: nil, undo: Undo?): Menu
function Menus:Acquire(class, undo) end
---@overload fun(class: "Menu", undo: Undo?): Menu
---@overload fun(class: nil, undo: Undo?): Menu
---@deprecated use "Acquire" instead
function Menus:Aquire(class, undo) end
---@overload fun(index: integer, class: "Menu", undo: Undo?, count: integer?): Menu
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Menu
function Menus:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Menu"): Menu
---@overload fun(name: string, class: nil): Menu
function Menus:Find(name, class) end
---@overload fun(name: string, class: "Menu"): Menu
---@overload fun(name: string, class: nil): Object
function Menus:FindRecursive(name, class) end
