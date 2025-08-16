---@meta

---@class UserPlugin: Plugin A user-creatable lua plugin object that is a collection of lua-only components
local UserPlugin = {}
---@return "UserPlugin"
function UserPlugin:GetClass() end
---@return "ComponentLua"
function UserPlugin:GetChildClass() end
---@generic T : UserPlugin
---@param class `T`
---@return boolean
function UserPlugin:IsClass(class) end
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
---@generic T : ComponentLua
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ComponentLua
function UserPlugin:Create(index, class, undo) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ComponentLua
function UserPlugin:Append(class, undo, count) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ComponentLua
function UserPlugin:Acquire(class, undo) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ComponentLua
---@deprecated use "Acquire" instead
function UserPlugin:Aquire(class, undo) end
---@generic T : ComponentLua
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ComponentLua
function UserPlugin:Insert(index, class, undo, count) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ComponentLua
function UserPlugin:Find(class, undo) end
function UserPlugin:SetChildren(property_name, property_value) end