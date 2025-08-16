---@meta

---@class PresetPoolSettingsCollect: Object
local PresetPoolSettingsCollect = {}
---@return "PresetPoolSettingsCollect"
function PresetPoolSettingsCollect:GetClass() end
---@return "PresetPoolSettings"
function PresetPoolSettingsCollect:GetChildClass() end
---@generic T : PresetPoolSettingsCollect
---@param class `T`
---@return boolean
function PresetPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PresetPoolSettings
function PresetPoolSettingsCollect:Ptr(index) end
---@return PresetPoolSettings[]
function PresetPoolSettingsCollect:Children() end
---@return PresetPoolSettings?
function PresetPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetPoolSettings
function PresetPoolSettingsCollect:Get(name, role) end
---@generic T : PresetPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetPoolSettings
function PresetPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetPoolSettings
function PresetPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetPoolSettings
function PresetPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetPoolSettings
---@deprecated use "Acquire" instead
function PresetPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetPoolSettings
function PresetPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetPoolSettings
function PresetPoolSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "DisplayMode", property_value: PresetDisplayMode)
---@overload fun(property_name: "Action", property_value: PresetAction)
---@overload fun(property_name: "Action", property_value: PresetAction)
---@overload fun(property_name: "DisplayMode", property_value: PresetDisplayMode)
function PresetPoolSettingsCollect:SetChildren(property_name, property_value) end