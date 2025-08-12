---@meta

---@class PresetFocusPoolSettingsCollect: Object
local PresetFocusPoolSettingsCollect = {}
---@return "PresetFocusPoolSettingsCollect"
function PresetFocusPoolSettingsCollect:GetClass() end
---@return "PresetFocusPoolSettings"
function PresetFocusPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Ptr(index) end
---@return PresetFocusPoolSettings[]
function PresetFocusPoolSettingsCollect:Children() end
---@return PresetFocusPoolSettings?
function PresetFocusPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetFocusPoolSettings", undo: Undo?): PresetFocusPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetFocusPoolSettings", undo: Undo?, count: integer?): PresetFocusPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetFocusPoolSettings", undo: Undo?): PresetFocusPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetFocusPoolSettings", undo: Undo?): PresetFocusPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetFocusPoolSettings
---@deprecated use "Acquire" instead
function PresetFocusPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetFocusPoolSettings", undo: Undo?, count: integer?): PresetFocusPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetFocusPoolSettings"): PresetFocusPoolSettings
---@overload fun(name: string, class: nil): PresetFocusPoolSettings
function PresetFocusPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetFocusPoolSettings"): PresetFocusPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetFocusPoolSettingsCollect:FindRecursive(name, class) end
