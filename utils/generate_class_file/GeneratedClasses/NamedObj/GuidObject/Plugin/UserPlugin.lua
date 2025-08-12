---@meta

---@class UserPlugin: Plugin A user-creatable lua plugin object that is a collection of lua-only components
local UserPlugin = {}
---@return "UserPlugin"
function UserPlugin:GetClass() end
---@return "ComponentLua"
function UserPlugin:GetChildClass() end
---@return Plugins
function UserPlugin:Parent() end
---@param index integer
---@return ComponentLua
function UserPlugin:Ptr(index) end
---@return ComponentLua[]
function UserPlugin:Children() end
---@return ComponentLua?
function UserPlugin:CurrentChild() end
---@overload fun(name: integer, role: nil): ComponentLua
function UserPlugin:Get(name, role) end
---@overload fun(index: integer, class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(index: integer, class: nil, undo: Undo?): ComponentLua
function UserPlugin:Create(index, class, undo) end
---@overload fun(class: "ComponentLua", undo: Undo?, count: integer?): ComponentLua
---@overload fun(class: nil, undo: Undo?, count: integer?): ComponentLua
function UserPlugin:Append(class, undo, count) end
---@overload fun(class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(class: nil, undo: Undo?): ComponentLua
function UserPlugin:Acquire(class, undo) end
---@overload fun(class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(class: nil, undo: Undo?): ComponentLua
---@deprecated use "Acquire" instead
function UserPlugin:Aquire(class, undo) end
---@overload fun(index: integer, class: "ComponentLua", undo: Undo?, count: integer?): ComponentLua
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ComponentLua
function UserPlugin:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ComponentLua"): ComponentLua
---@overload fun(name: string, class: nil): ComponentLua
function UserPlugin:Find(name, class) end
---@overload fun(name: string, class: "ComponentLua"): ComponentLua
---@overload fun(name: string, class: nil): Object
function UserPlugin:FindRecursive(name, class) end
