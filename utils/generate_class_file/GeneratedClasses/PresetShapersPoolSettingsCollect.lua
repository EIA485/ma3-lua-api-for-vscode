---@meta

---@class PresetShapersPoolSettingsCollect: Object
local PresetShapersPoolSettingsCollect = {}
---@return "PresetShapersPoolSettingsCollect"
function PresetShapersPoolSettingsCollect:GetClass() end
---@return "PresetShapersPoolSettings"
function PresetShapersPoolSettingsCollect:GetChildClass() end
---@generic T : PresetShapersPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetShapersPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Ptr(index) end
---@return PresetShapersPoolSettings[]
function PresetShapersPoolSettingsCollect:Children() end
---@return PresetShapersPoolSettings?
function PresetShapersPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Get(name, role) end
---@generic T : PresetShapersPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetShapersPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetShapersPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetShapersPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetShapersPoolSettings
---@deprecated use "Acquire" instead
function PresetShapersPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetShapersPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetShapersPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Find(class, undo) end
function PresetShapersPoolSettingsCollect:ActiveDisplay(property_name, property_value) end