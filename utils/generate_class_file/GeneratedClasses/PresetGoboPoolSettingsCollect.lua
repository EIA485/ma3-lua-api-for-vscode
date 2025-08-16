---@meta

---@class PresetGoboPoolSettingsCollect: Object
local PresetGoboPoolSettingsCollect = {}
---@return "PresetGoboPoolSettingsCollect"
function PresetGoboPoolSettingsCollect:GetClass() end
---@return "PresetGoboPoolSettings"
function PresetGoboPoolSettingsCollect:GetChildClass() end
---@generic T : PresetGoboPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetGoboPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Ptr(index) end
---@return PresetGoboPoolSettings[]
function PresetGoboPoolSettingsCollect:Children() end
---@return PresetGoboPoolSettings?
function PresetGoboPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Get(name, role) end
---@generic T : PresetGoboPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetGoboPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetGoboPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetGoboPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetGoboPoolSettings
---@deprecated use "Acquire" instead
function PresetGoboPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetGoboPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetGoboPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Find(class, undo) end
function PresetGoboPoolSettingsCollect:SetChildren(property_name, property_value) end