---@meta

---@class PresetFocusPoolSettingsCollect: Object
local PresetFocusPoolSettingsCollect = {}
---@return "PresetFocusPoolSettingsCollect"
function PresetFocusPoolSettingsCollect:GetClass() end
---@return "PresetFocusPoolSettings"
function PresetFocusPoolSettingsCollect:GetChildClass() end
---@generic T : PresetFocusPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetFocusPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Ptr(index) end
---@return PresetFocusPoolSettings[]
function PresetFocusPoolSettingsCollect:Children() end
---@return PresetFocusPoolSettings?
function PresetFocusPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Get(name, role) end
---@generic T : PresetFocusPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetFocusPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetFocusPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetFocusPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetFocusPoolSettings
---@deprecated use "Acquire" instead
function PresetFocusPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetFocusPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetFocusPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Find(class, undo) end
function PresetFocusPoolSettingsCollect:SetChildren(property_name, property_value) end