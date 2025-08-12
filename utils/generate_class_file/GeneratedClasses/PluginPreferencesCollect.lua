---@meta

---@class PluginPreferencesCollect: Object
local PluginPreferencesCollect = {}
---@return "PluginPreferencesCollect"
function PluginPreferencesCollect:GetClass() end
---@return "PluginPreferences"
function PluginPreferencesCollect:GetChildClass() end
---@param index integer
---@return PluginPreferences
function PluginPreferencesCollect:Ptr(index) end
---@return PluginPreferences[]
function PluginPreferencesCollect:Children() end
---@return PluginPreferences?
function PluginPreferencesCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PluginPreferences
function PluginPreferencesCollect:Get(name, role) end
---@overload fun(index: integer, class: "PluginPreferences", undo: Undo?): PluginPreferences
---@overload fun(index: integer, class: nil, undo: Undo?): PluginPreferences
function PluginPreferencesCollect:Create(index, class, undo) end
---@overload fun(class: "PluginPreferences", undo: Undo?, count: integer?): PluginPreferences
---@overload fun(class: nil, undo: Undo?, count: integer?): PluginPreferences
function PluginPreferencesCollect:Append(class, undo, count) end
---@overload fun(class: "PluginPreferences", undo: Undo?): PluginPreferences
---@overload fun(class: nil, undo: Undo?): PluginPreferences
function PluginPreferencesCollect:Acquire(class, undo) end
---@overload fun(class: "PluginPreferences", undo: Undo?): PluginPreferences
---@overload fun(class: nil, undo: Undo?): PluginPreferences
---@deprecated use "Acquire" instead
function PluginPreferencesCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PluginPreferences", undo: Undo?, count: integer?): PluginPreferences
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PluginPreferences
function PluginPreferencesCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PluginPreferences"): PluginPreferences
---@overload fun(name: string, class: nil): PluginPreferences
function PluginPreferencesCollect:Find(name, class) end
---@overload fun(name: string, class: "PluginPreferences"): PluginPreferences
---@overload fun(name: string, class: nil): Object
function PluginPreferencesCollect:FindRecursive(name, class) end
