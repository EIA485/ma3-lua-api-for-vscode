---@meta

---@class PresetVideoPoolSettingsCollect: Object
local PresetVideoPoolSettingsCollect = {}
---@return "PresetVideoPoolSettingsCollect"
function PresetVideoPoolSettingsCollect:GetClass() end
---@return "PresetVideoPoolSettings"
function PresetVideoPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Ptr(index) end
---@return PresetVideoPoolSettings[]
function PresetVideoPoolSettingsCollect:Children() end
---@return PresetVideoPoolSettings?
function PresetVideoPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetVideoPoolSettings", undo: Undo?): PresetVideoPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetVideoPoolSettings", undo: Undo?, count: integer?): PresetVideoPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetVideoPoolSettings", undo: Undo?): PresetVideoPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetVideoPoolSettings", undo: Undo?): PresetVideoPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetVideoPoolSettings
---@deprecated use "Acquire" instead
function PresetVideoPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetVideoPoolSettings", undo: Undo?, count: integer?): PresetVideoPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetVideoPoolSettings"): PresetVideoPoolSettings
---@overload fun(name: string, class: nil): PresetVideoPoolSettings
function PresetVideoPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetVideoPoolSettings"): PresetVideoPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetVideoPoolSettingsCollect:FindRecursive(name, class) end
