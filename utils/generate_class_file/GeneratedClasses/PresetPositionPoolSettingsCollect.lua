---@meta

---@class PresetPositionPoolSettingsCollect: Object
local PresetPositionPoolSettingsCollect = {}
---@return "PresetPositionPoolSettingsCollect"
function PresetPositionPoolSettingsCollect:GetClass() end
---@return "PresetPositionPoolSettings"
function PresetPositionPoolSettingsCollect:GetChildClass() end
---@generic T : PresetPositionPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetPositionPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Ptr(index) end
---@return PresetPositionPoolSettings[]
function PresetPositionPoolSettingsCollect:Children() end
---@return PresetPositionPoolSettings?
function PresetPositionPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Get(name, role) end
---@generic T : PresetPositionPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetPositionPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetPositionPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetPositionPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetPositionPoolSettings
---@deprecated use "Acquire" instead
function PresetPositionPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetPositionPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetPositionPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Find(class, undo) end
function PresetPositionPoolSettingsCollect:SetChildren(property_name, property_value) end