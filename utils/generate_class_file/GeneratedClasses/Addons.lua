---@meta

---@class Addons: Object
local Addons = {}
---@return "Addons"
function Addons:GetClass() end
---@return "Addon"
function Addons:GetChildClass() end
---@return Root
function Addons:Parent() end
---@param index integer
---@return Addon
function Addons:Ptr(index) end
---@return Addon[]
function Addons:Children() end
---@return Addon?
function Addons:CurrentChild() end
---@overload fun(name: integer, role: nil): Addon
function Addons:Get(name, role) end
---@generic T : Addon
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Addon
function Addons:Create(index, class, undo) end
---@generic T : Addon
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Addon
function Addons:Append(class, undo, count) end
---@generic T : Addon
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Addon
function Addons:Acquire(class, undo) end
---@generic T : Addon
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Addon
---@deprecated use "Acquire" instead
function Addons:Aquire(class, undo) end
---@generic T : Addon
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Addon
function Addons:Insert(index, class, undo, count) end
---@generic T : Addon
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Addon
function Addons:Find(class, undo) end