---@meta

---@class PluginPoolSettingsCollect: Object
local PluginPoolSettingsCollect = {}
---@return "PluginPoolSettingsCollect"
function PluginPoolSettingsCollect:GetClass() end
---@return "PluginPoolSettings"
function PluginPoolSettingsCollect:GetChildClass() end
---@generic T : PluginPoolSettingsCollect
---@param class `T`
---@return boolean
function PluginPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PluginPoolSettings
function PluginPoolSettingsCollect:Ptr(index) end
---@return PluginPoolSettings[]
function PluginPoolSettingsCollect:Children() end
---@return PluginPoolSettings?
function PluginPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PluginPoolSettings
function PluginPoolSettingsCollect:Get(name, role) end
---@generic T : PluginPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PluginPoolSettings
function PluginPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PluginPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PluginPoolSettings
function PluginPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PluginPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PluginPoolSettings
function PluginPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PluginPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PluginPoolSettings
---@deprecated use "Acquire" instead
function PluginPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PluginPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PluginPoolSettings
function PluginPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PluginPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PluginPoolSettings
function PluginPoolSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "Action", property_value: PluginPoolAction)
---@overload fun(property_name: "Action", property_value: PluginPoolAction)
function PluginPoolSettingsCollect:SetChildren(property_name, property_value) end