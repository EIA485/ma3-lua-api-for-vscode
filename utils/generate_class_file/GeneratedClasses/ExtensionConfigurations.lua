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
---@overload fun(index: integer, class: "ExtensionConfig", undo: Undo?): ExtensionConfig
---@overload fun(index: integer, class: nil, undo: Undo?): ExtensionConfig
function ExtensionConfigurations:Create(index, class, undo) end
---@overload fun(class: "ExtensionConfig", undo: Undo?, count: integer?): ExtensionConfig
---@overload fun(class: nil, undo: Undo?, count: integer?): ExtensionConfig
function ExtensionConfigurations:Append(class, undo, count) end
---@overload fun(class: "ExtensionConfig", undo: Undo?): ExtensionConfig
---@overload fun(class: nil, undo: Undo?): ExtensionConfig
function ExtensionConfigurations:Acquire(class, undo) end
---@overload fun(class: "ExtensionConfig", undo: Undo?): ExtensionConfig
---@overload fun(class: nil, undo: Undo?): ExtensionConfig
---@deprecated use "Acquire" instead
function ExtensionConfigurations:Aquire(class, undo) end
---@overload fun(index: integer, class: "ExtensionConfig", undo: Undo?, count: integer?): ExtensionConfig
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ExtensionConfig
function ExtensionConfigurations:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ExtensionConfig"): ExtensionConfig
---@overload fun(name: string, class: nil): ExtensionConfig
function ExtensionConfigurations:Find(name, class) end
---@overload fun(name: string, class: "ExtensionConfig"): ExtensionConfig
---@overload fun(name: string, class: nil): Object
function ExtensionConfigurations:FindRecursive(name, class) end
