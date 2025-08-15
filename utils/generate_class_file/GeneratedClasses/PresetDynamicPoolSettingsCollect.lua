---@meta

---@class PresetDynamicPoolSettingsCollect: Object
local PresetDynamicPoolSettingsCollect = {}
---@return "PresetDynamicPoolSettingsCollect"
function PresetDynamicPoolSettingsCollect:GetClass() end
---@return "PresetDynamicPoolSettings"
function PresetDynamicPoolSettingsCollect:GetChildClass() end
---@generic T : PresetDynamicPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetDynamicPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Ptr(index) end
---@return PresetDynamicPoolSettings[]
function PresetDynamicPoolSettingsCollect:Children() end
---@return PresetDynamicPoolSettings?
function PresetDynamicPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Get(name, role) end
---@generic T : PresetDynamicPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetDynamicPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetDynamicPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetDynamicPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetDynamicPoolSettings
---@deprecated use "Acquire" instead
function PresetDynamicPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetDynamicPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetDynamicPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Find(class, undo) end
function PresetDynamicPoolSettingsCollect:ActiveDisplay(property_name, property_value) end