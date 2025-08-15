---@meta

---@class PluginPreferencesCollect: Object
local PluginPreferencesCollect = {}
---@return "PluginPreferencesCollect"
function PluginPreferencesCollect:GetClass() end
---@return "PluginPreferences"
function PluginPreferencesCollect:GetChildClass() end
---@generic T : PluginPreferencesCollect
---@param class `T`
---@return boolean
function PluginPreferencesCollect:IsClass(class) end
---@param index integer
---@return PluginPreferences
function PluginPreferencesCollect:Ptr(index) end
---@return PluginPreferences[]
function PluginPreferencesCollect:Children() end
---@return PluginPreferences?
function PluginPreferencesCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PluginPreferences
function PluginPreferencesCollect:Get(name, role) end
---@generic T : PluginPreferences
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PluginPreferences
function PluginPreferencesCollect:Create(index, class, undo) end
---@generic T : PluginPreferences
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PluginPreferences
function PluginPreferencesCollect:Append(class, undo, count) end
---@generic T : PluginPreferences
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PluginPreferences
function PluginPreferencesCollect:Acquire(class, undo) end
---@generic T : PluginPreferences
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PluginPreferences
---@deprecated use "Acquire" instead
function PluginPreferencesCollect:Aquire(class, undo) end
---@generic T : PluginPreferences
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PluginPreferences
function PluginPreferencesCollect:Insert(index, class, undo, count) end
---@generic T : PluginPreferences
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PluginPreferences
function PluginPreferencesCollect:Find(class, undo) end
---@overload fun(property_name: "DisplayIndex", property_value: DisplayIndex)
---@overload fun(property_name: "DisplayIndex", property_value: DisplayIndex)
function PluginPreferencesCollect:DisplayIndex(property_name, property_value) end