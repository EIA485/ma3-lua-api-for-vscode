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
---@overload fun(index: integer, class: "PresetBeamPoolSettings", undo: Undo?): PresetBeamPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetBeamPoolSettings", undo: Undo?, count: integer?): PresetBeamPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetBeamPoolSettings", undo: Undo?): PresetBeamPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetBeamPoolSettings", undo: Undo?): PresetBeamPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetBeamPoolSettings
---@deprecated use "Acquire" instead
function PresetBeamPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetBeamPoolSettings", undo: Undo?, count: integer?): PresetBeamPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetBeamPoolSettings"): PresetBeamPoolSettings
---@overload fun(name: string, class: nil): PresetBeamPoolSettings
function PresetBeamPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetBeamPoolSettings"): PresetBeamPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetBeamPoolSettingsCollect:FindRecursive(name, class) end
