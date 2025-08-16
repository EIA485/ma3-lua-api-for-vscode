---@meta

---@class PresetDimmerPoolSettingsCollect: Object
local PresetDimmerPoolSettingsCollect = {}
---@return "PresetDimmerPoolSettingsCollect"
function PresetDimmerPoolSettingsCollect:GetClass() end
---@return "PresetDimmerPoolSettings"
function PresetDimmerPoolSettingsCollect:GetChildClass() end
---@generic T : PresetDimmerPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetDimmerPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Ptr(index) end
---@return PresetDimmerPoolSettings[]
function PresetDimmerPoolSettingsCollect:Children() end
---@return PresetDimmerPoolSettings?
function PresetDimmerPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Get(name, role) end
---@generic T : PresetDimmerPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetDimmerPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetDimmerPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetDimmerPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetDimmerPoolSettings
---@deprecated use "Acquire" instead
function PresetDimmerPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetDimmerPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetDimmerPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Find(class, undo) end
function PresetDimmerPoolSettingsCollect:SetChildren(property_name, property_value) end