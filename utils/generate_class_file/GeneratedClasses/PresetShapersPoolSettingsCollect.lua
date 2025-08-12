---@meta

---@class PresetShapersPoolSettingsCollect: Object
local PresetShapersPoolSettingsCollect = {}
---@return "PresetShapersPoolSettingsCollect"
function PresetShapersPoolSettingsCollect:GetClass() end
---@return "PresetShapersPoolSettings"
function PresetShapersPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Ptr(index) end
---@return PresetShapersPoolSettings[]
function PresetShapersPoolSettingsCollect:Children() end
---@return PresetShapersPoolSettings?
function PresetShapersPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetShapersPoolSettings", undo: Undo?): PresetShapersPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetShapersPoolSettings", undo: Undo?, count: integer?): PresetShapersPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetShapersPoolSettings", undo: Undo?): PresetShapersPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetShapersPoolSettings", undo: Undo?): PresetShapersPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetShapersPoolSettings
---@deprecated use "Acquire" instead
function PresetShapersPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetShapersPoolSettings", undo: Undo?, count: integer?): PresetShapersPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetShapersPoolSettings"): PresetShapersPoolSettings
---@overload fun(name: string, class: nil): PresetShapersPoolSettings
function PresetShapersPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetShapersPoolSettings"): PresetShapersPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetShapersPoolSettingsCollect:FindRecursive(name, class) end
