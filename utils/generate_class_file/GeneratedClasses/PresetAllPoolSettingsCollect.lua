---@meta

---@class PresetAllPoolSettingsCollect: Object
local PresetAllPoolSettingsCollect = {}
---@return "PresetAllPoolSettingsCollect"
function PresetAllPoolSettingsCollect:GetClass() end
---@return "PresetAllPoolSettings"
function PresetAllPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Ptr(index) end
---@return PresetAllPoolSettings[]
function PresetAllPoolSettingsCollect:Children() end
---@return PresetAllPoolSettings?
function PresetAllPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetAllPoolSettings", undo: Undo?): PresetAllPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetAllPoolSettings", undo: Undo?, count: integer?): PresetAllPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetAllPoolSettings", undo: Undo?): PresetAllPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetAllPoolSettings", undo: Undo?): PresetAllPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetAllPoolSettings
---@deprecated use "Acquire" instead
function PresetAllPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetAllPoolSettings", undo: Undo?, count: integer?): PresetAllPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetAllPoolSettings"): PresetAllPoolSettings
---@overload fun(name: string, class: nil): PresetAllPoolSettings
function PresetAllPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetAllPoolSettings"): PresetAllPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetAllPoolSettingsCollect:FindRecursive(name, class) end
