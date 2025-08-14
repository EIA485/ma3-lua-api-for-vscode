---@meta

---@class ExtensionConfigurations: Object
local ExtensionConfigurations = {}
---@return "ExtensionConfigurations"
function ExtensionConfigurations:GetClass() end
---@return "ExtensionConfig"
function ExtensionConfigurations:GetChildClass() end
---@return StationSettings
function ExtensionConfigurations:Parent() end
---@param index integer
---@return ExtensionConfig
function ExtensionConfigurations:Ptr(index) end
---@return ExtensionConfig[]
function ExtensionConfigurations:Children() end
---@return ExtensionConfig?
function ExtensionConfigurations:CurrentChild() end
---@overload fun(name: integer, role: nil): ExtensionConfig
function ExtensionConfigurations:Get(name, role) end
---@generic T : ExtensionConfig
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ExtensionConfig
function ExtensionConfigurations:Create(index, class, undo) end
---@generic T : ExtensionConfig
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ExtensionConfig
function ExtensionConfigurations:Append(class, undo, count) end
---@generic T : ExtensionConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ExtensionConfig
function ExtensionConfigurations:Acquire(class, undo) end
---@generic T : ExtensionConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ExtensionConfig
---@deprecated use "Acquire" instead
function ExtensionConfigurations:Aquire(class, undo) end
---@generic T : ExtensionConfig
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ExtensionConfig
function ExtensionConfigurations:Insert(index, class, undo, count) end
---@generic T : ExtensionConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ExtensionConfig
function ExtensionConfigurations:Find(class, undo) end