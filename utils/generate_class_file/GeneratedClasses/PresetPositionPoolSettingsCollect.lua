---@meta

---@class PresetPositionPoolSettingsCollect: Object
local PresetPositionPoolSettingsCollect = {}
---@return "PresetPositionPoolSettingsCollect"
function PresetPositionPoolSettingsCollect:GetClass() end
---@return "PresetPositionPoolSettings"
function PresetPositionPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Ptr(index) end
---@return PresetPositionPoolSettings[]
function PresetPositionPoolSettingsCollect:Children() end
---@return PresetPositionPoolSettings?
function PresetPositionPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetPositionPoolSettings", undo: Undo?): PresetPositionPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetPositionPoolSettings", undo: Undo?, count: integer?): PresetPositionPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetPositionPoolSettings", undo: Undo?): PresetPositionPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetPositionPoolSettings", undo: Undo?): PresetPositionPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetPositionPoolSettings
---@deprecated use "Acquire" instead
function PresetPositionPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetPositionPoolSettings", undo: Undo?, count: integer?): PresetPositionPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetPositionPoolSettings"): PresetPositionPoolSettings
---@overload fun(name: string, class: nil): PresetPositionPoolSettings
function PresetPositionPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetPositionPoolSettings"): PresetPositionPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetPositionPoolSettingsCollect:FindRecursive(name, class) end
