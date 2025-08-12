---@meta

---@class PresetDynamicPoolSettingsCollect: Object
local PresetDynamicPoolSettingsCollect = {}
---@return "PresetDynamicPoolSettingsCollect"
function PresetDynamicPoolSettingsCollect:GetClass() end
---@return "PresetDynamicPoolSettings"
function PresetDynamicPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Ptr(index) end
---@return PresetDynamicPoolSettings[]
function PresetDynamicPoolSettingsCollect:Children() end
---@return PresetDynamicPoolSettings?
function PresetDynamicPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetDynamicPoolSettings", undo: Undo?): PresetDynamicPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetDynamicPoolSettings", undo: Undo?, count: integer?): PresetDynamicPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetDynamicPoolSettings", undo: Undo?): PresetDynamicPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetDynamicPoolSettings", undo: Undo?): PresetDynamicPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetDynamicPoolSettings
---@deprecated use "Acquire" instead
function PresetDynamicPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetDynamicPoolSettings", undo: Undo?, count: integer?): PresetDynamicPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetDynamicPoolSettings"): PresetDynamicPoolSettings
---@overload fun(name: string, class: nil): PresetDynamicPoolSettings
function PresetDynamicPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetDynamicPoolSettings"): PresetDynamicPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetDynamicPoolSettingsCollect:FindRecursive(name, class) end
