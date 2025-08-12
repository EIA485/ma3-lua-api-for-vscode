---@meta

---@class PresetColorPoolSettingsCollect: Object
local PresetColorPoolSettingsCollect = {}
---@return "PresetColorPoolSettingsCollect"
function PresetColorPoolSettingsCollect:GetClass() end
---@return "PresetColorPoolSettings"
function PresetColorPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Ptr(index) end
---@return PresetColorPoolSettings[]
function PresetColorPoolSettingsCollect:Children() end
---@return PresetColorPoolSettings?
function PresetColorPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetColorPoolSettings", undo: Undo?): PresetColorPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetColorPoolSettings", undo: Undo?, count: integer?): PresetColorPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetColorPoolSettings", undo: Undo?): PresetColorPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetColorPoolSettings", undo: Undo?): PresetColorPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetColorPoolSettings
---@deprecated use "Acquire" instead
function PresetColorPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetColorPoolSettings", undo: Undo?, count: integer?): PresetColorPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetColorPoolSettings"): PresetColorPoolSettings
---@overload fun(name: string, class: nil): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetColorPoolSettings"): PresetColorPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetColorPoolSettingsCollect:FindRecursive(name, class) end
