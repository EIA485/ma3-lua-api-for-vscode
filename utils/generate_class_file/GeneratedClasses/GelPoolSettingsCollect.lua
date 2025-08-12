---@meta

---@class GelPoolSettingsCollect: Object
local GelPoolSettingsCollect = {}
---@return "GelPoolSettingsCollect"
function GelPoolSettingsCollect:GetClass() end
---@return "GelPoolSettings"
function GelPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return GelPoolSettings
function GelPoolSettingsCollect:Ptr(index) end
---@return GelPoolSettings[]
function GelPoolSettingsCollect:Children() end
---@return GelPoolSettings?
function GelPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): GelPoolSettings
function GelPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "GelPoolSettings", undo: Undo?): GelPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): GelPoolSettings
function GelPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "GelPoolSettings", undo: Undo?, count: integer?): GelPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): GelPoolSettings
function GelPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "GelPoolSettings", undo: Undo?): GelPoolSettings
---@overload fun(class: nil, undo: Undo?): GelPoolSettings
function GelPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "GelPoolSettings", undo: Undo?): GelPoolSettings
---@overload fun(class: nil, undo: Undo?): GelPoolSettings
---@deprecated use "Acquire" instead
function GelPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "GelPoolSettings", undo: Undo?, count: integer?): GelPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GelPoolSettings
function GelPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GelPoolSettings"): GelPoolSettings
---@overload fun(name: string, class: nil): GelPoolSettings
function GelPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "GelPoolSettings"): GelPoolSettings
---@overload fun(name: string, class: nil): Object
function GelPoolSettingsCollect:FindRecursive(name, class) end
