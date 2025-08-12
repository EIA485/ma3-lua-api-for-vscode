---@meta

---@class PresetControlPoolSettingsCollect: Object
local PresetControlPoolSettingsCollect = {}
---@return "PresetControlPoolSettingsCollect"
function PresetControlPoolSettingsCollect:GetClass() end
---@return "PresetControlPoolSettings"
function PresetControlPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Ptr(index) end
---@return PresetControlPoolSettings[]
function PresetControlPoolSettingsCollect:Children() end
---@return PresetControlPoolSettings?
function PresetControlPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetControlPoolSettings", undo: Undo?): PresetControlPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetControlPoolSettings", undo: Undo?, count: integer?): PresetControlPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetControlPoolSettings", undo: Undo?): PresetControlPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetControlPoolSettings", undo: Undo?): PresetControlPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetControlPoolSettings
---@deprecated use "Acquire" instead
function PresetControlPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetControlPoolSettings", undo: Undo?, count: integer?): PresetControlPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetControlPoolSettings"): PresetControlPoolSettings
---@overload fun(name: string, class: nil): PresetControlPoolSettings
function PresetControlPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetControlPoolSettings"): PresetControlPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetControlPoolSettingsCollect:FindRecursive(name, class) end
