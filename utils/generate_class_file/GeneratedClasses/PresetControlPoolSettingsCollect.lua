---@meta

---@class PresetControlPoolSettingsCollect: Object
local PresetControlPoolSettingsCollect = {}
---@return "PresetControlPoolSettingsCollect"
function PresetControlPoolSettingsCollect:GetClass() end
---@return "PresetControlPoolSettings"
function PresetControlPoolSettingsCollect:GetChildClass() end
---@generic T : PresetControlPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetControlPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Ptr(index) end
---@return PresetControlPoolSettings[]
function PresetControlPoolSettingsCollect:Children() end
---@return PresetControlPoolSettings?
function PresetControlPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Get(name, role) end
---@generic T : PresetControlPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetControlPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetControlPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetControlPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetControlPoolSettings
---@deprecated use "Acquire" instead
function PresetControlPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetControlPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetControlPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Find(class, undo) end
function PresetControlPoolSettingsCollect:SetChildren(property_name, property_value) end