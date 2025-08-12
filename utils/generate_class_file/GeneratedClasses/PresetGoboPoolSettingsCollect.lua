---@meta

---@class PresetGoboPoolSettingsCollect: Object
local PresetGoboPoolSettingsCollect = {}
---@return "PresetGoboPoolSettingsCollect"
function PresetGoboPoolSettingsCollect:GetClass() end
---@return "PresetGoboPoolSettings"
function PresetGoboPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Ptr(index) end
---@return PresetGoboPoolSettings[]
function PresetGoboPoolSettingsCollect:Children() end
---@return PresetGoboPoolSettings?
function PresetGoboPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PresetGoboPoolSettings", undo: Undo?): PresetGoboPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PresetGoboPoolSettings", undo: Undo?, count: integer?): PresetGoboPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PresetGoboPoolSettings", undo: Undo?): PresetGoboPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PresetGoboPoolSettings", undo: Undo?): PresetGoboPoolSettings
---@overload fun(class: nil, undo: Undo?): PresetGoboPoolSettings
---@deprecated use "Acquire" instead
function PresetGoboPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PresetGoboPoolSettings", undo: Undo?, count: integer?): PresetGoboPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PresetGoboPoolSettings"): PresetGoboPoolSettings
---@overload fun(name: string, class: nil): PresetGoboPoolSettings
function PresetGoboPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PresetGoboPoolSettings"): PresetGoboPoolSettings
---@overload fun(name: string, class: nil): Object
function PresetGoboPoolSettingsCollect:FindRecursive(name, class) end
