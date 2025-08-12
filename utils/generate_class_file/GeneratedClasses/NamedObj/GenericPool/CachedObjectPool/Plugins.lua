---@meta

---@class Plugins: CachedObjectPool Pool for plugin container.
local Plugins = {}
---@return "Plugins"
function Plugins:GetClass() end
---@return "UserPlugin"
function Plugins:GetChildClass() end
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
---@overload fun(index: integer, class: "UserPlugin", undo: Undo?): UserPlugin
---@overload fun(index: integer, class: nil, undo: Undo?): UserPlugin
function Plugins:Create(index, class, undo) end
---@overload fun(class: "UserPlugin", undo: Undo?, count: integer?): UserPlugin
---@overload fun(class: nil, undo: Undo?, count: integer?): UserPlugin
function Plugins:Append(class, undo, count) end
---@overload fun(class: "UserPlugin", undo: Undo?): UserPlugin
---@overload fun(class: nil, undo: Undo?): UserPlugin
function Plugins:Acquire(class, undo) end
---@overload fun(class: "UserPlugin", undo: Undo?): UserPlugin
---@overload fun(class: nil, undo: Undo?): UserPlugin
---@deprecated use "Acquire" instead
function Plugins:Aquire(class, undo) end
---@overload fun(index: integer, class: "UserPlugin", undo: Undo?, count: integer?): UserPlugin
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserPlugin
function Plugins:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UserPlugin"): UserPlugin
---@overload fun(name: string, class: nil): UserPlugin
function Plugins:Find(name, class) end
---@overload fun(name: string, class: "UserPlugin"): UserPlugin
---@overload fun(name: string, class: nil): Object
function Plugins:FindRecursive(name, class) end
