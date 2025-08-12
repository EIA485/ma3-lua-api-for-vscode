---@meta

---@class PluginPoolSettingsCollect: Object
local PluginPoolSettingsCollect = {}
---@return "PluginPoolSettingsCollect"
function PluginPoolSettingsCollect:GetClass() end
---@return "PluginPoolSettings"
function PluginPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PluginPoolSettings
function PluginPoolSettingsCollect:Ptr(index) end
---@return PluginPoolSettings[]
function PluginPoolSettingsCollect:Children() end
---@return PluginPoolSettings?
function PluginPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PluginPoolSettings
function PluginPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PluginPoolSettings", undo: Undo?): PluginPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PluginPoolSettings
function PluginPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PluginPoolSettings", undo: Undo?, count: integer?): PluginPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PluginPoolSettings
function PluginPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PluginPoolSettings", undo: Undo?): PluginPoolSettings
---@overload fun(class: nil, undo: Undo?): PluginPoolSettings
function PluginPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PluginPoolSettings", undo: Undo?): PluginPoolSettings
---@overload fun(class: nil, undo: Undo?): PluginPoolSettings
---@deprecated use "Acquire" instead
function PluginPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PluginPoolSettings", undo: Undo?, count: integer?): PluginPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PluginPoolSettings
function PluginPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PluginPoolSettings"): PluginPoolSettings
---@overload fun(name: string, class: nil): PluginPoolSettings
function PluginPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PluginPoolSettings"): PluginPoolSettings
---@overload fun(name: string, class: nil): Object
function PluginPoolSettingsCollect:FindRecursive(name, class) end
