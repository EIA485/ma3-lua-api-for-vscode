---@meta

---@class Plugins: CachedObjectPool Pool for plugin container.
local Plugins = {}
---@return "Plugins"
function Plugins:GetClass() end
---@return "UserPlugin"
function Plugins:GetChildClass() end
---@generic T : Plugins
---@param class `T`
---@return boolean
function Plugins:IsClass(class) end
---@return Pool
function Plugins:Parent() end
---@param index integer
---@return UserPlugin
function Plugins:Ptr(index) end
---@return UserPlugin[]
function Plugins:Children() end
---@return UserPlugin?
function Plugins:CurrentChild() end
---@overload fun(name: integer, role: nil): UserPlugin
function Plugins:Get(name, role) end
---@generic T : UserPlugin
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserPlugin
function Plugins:Create(index, class, undo) end
---@generic T : UserPlugin
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserPlugin
function Plugins:Append(class, undo, count) end
---@generic T : UserPlugin
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserPlugin
function Plugins:Acquire(class, undo) end
---@generic T : UserPlugin
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserPlugin
---@deprecated use "Acquire" instead
function Plugins:Aquire(class, undo) end
---@generic T : UserPlugin
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserPlugin
function Plugins:Insert(index, class, undo, count) end
---@generic T : UserPlugin
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserPlugin
function Plugins:Find(class, undo) end
function Plugins:NDISource(property_name, property_value) end