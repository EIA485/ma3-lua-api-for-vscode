---@meta

---@class PresetBeamPoolSettingsCollect: Object
local PresetBeamPoolSettingsCollect = {}
---@return "PresetBeamPoolSettingsCollect"
function PresetBeamPoolSettingsCollect:GetClass() end
---@return "PresetBeamPoolSettings"
function PresetBeamPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Ptr(index) end
---@return PresetBeamPoolSettings[]
function PresetBeamPoolSettingsCollect:Children() end
---@return PresetBeamPoolSettings?
function PresetBeamPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Get(name, role) end
---@generic T : PresetBeamPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetBeamPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetBeamPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetBeamPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetBeamPoolSettings
---@deprecated use "Acquire" instead
function PresetBeamPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetBeamPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetBeamPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Find(class, undo) end