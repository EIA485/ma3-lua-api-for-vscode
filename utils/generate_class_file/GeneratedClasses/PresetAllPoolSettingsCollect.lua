---@meta

---@class PresetAllPoolSettingsCollect: Object
local PresetAllPoolSettingsCollect = {}
---@return "PresetAllPoolSettingsCollect"
function PresetAllPoolSettingsCollect:GetClass() end
---@return "PresetAllPoolSettings"
function PresetAllPoolSettingsCollect:GetChildClass() end
---@generic T : PresetAllPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetAllPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Ptr(index) end
---@return PresetAllPoolSettings[]
function PresetAllPoolSettingsCollect:Children() end
---@return PresetAllPoolSettings?
function PresetAllPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Get(name, role) end
---@generic T : PresetAllPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetAllPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetAllPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetAllPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetAllPoolSettings
---@deprecated use "Acquire" instead
function PresetAllPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetAllPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetAllPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Find(class, undo) end
function PresetAllPoolSettingsCollect:ActiveDisplay(property_name, property_value) end