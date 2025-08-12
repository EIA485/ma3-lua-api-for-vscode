---@meta

---@class PresetDimmerPoolSettingsCollect: Object
local PresetDimmerPoolSettingsCollect = {}
---@return "PresetDimmerPoolSettingsCollect"
function PresetDimmerPoolSettingsCollect:GetClass() end
---@return "PresetDimmerPoolSettings"
function PresetDimmerPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Ptr(index) end
---@return PresetDimmerPoolSettings[]
function PresetDimmerPoolSettingsCollect:Children() end
---@return PresetDimmerPoolSettings?
function PresetDimmerPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetDimmerPoolSettings", undo: Undo?): PresetDimmerPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetDimmerPoolSettings", undo: Undo?, count: integer?): PresetDimmerPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetDimmerPoolSettings", undo: Undo?): PresetDimmerPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetDimmerPoolSettings", undo: Undo?): PresetDimmerPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetDimmerPoolSettings
---@deprecated use "Acquire" instead
function PresetDimmerPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetDimmerPoolSettings", undo: Undo?, count: integer?): PresetDimmerPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetDimmerPoolSettings"): PresetDimmerPoolSettings
---@overload fun(name: string, class: nil): PresetDimmerPoolSettings
function PresetDimmerPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetDimmerPoolSettings"): PresetDimmerPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetDimmerPoolSettingsCollect:FindRecursive(name, class) end
