---@meta

---@class PresetVideoPoolSettingsCollect: Object
local PresetVideoPoolSettingsCollect = {}
---@return "PresetVideoPoolSettingsCollect"
function PresetVideoPoolSettingsCollect:GetClass() end
---@return "PresetVideoPoolSettings"
function PresetVideoPoolSettingsCollect:GetChildClass() end
---@generic T : PresetVideoPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetVideoPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Ptr(index) end
---@return PresetVideoPoolSettings[]
function PresetVideoPoolSettingsCollect:Children() end
---@return PresetVideoPoolSettings?
function PresetVideoPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Get(name, role) end
---@generic T : PresetVideoPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetVideoPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetVideoPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetVideoPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetVideoPoolSettings
---@deprecated use "Acquire" instead
function PresetVideoPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetVideoPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetVideoPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Find(class, undo) end
function PresetVideoPoolSettingsCollect:SetChildren(property_name, property_value) end