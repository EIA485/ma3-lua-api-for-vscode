---@meta

---@class QuickeyPoolSettingsCollect: Object
local QuickeyPoolSettingsCollect = {}
---@return "QuickeyPoolSettingsCollect"
function QuickeyPoolSettingsCollect:GetClass() end
---@return "QuickeyPoolSettings"
function QuickeyPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Ptr(index) end
---@return QuickeyPoolSettings[]
function QuickeyPoolSettingsCollect:Children() end
---@return QuickeyPoolSettings?
function QuickeyPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "QuickeyPoolSettings", undo: Undo?): QuickeyPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "QuickeyPoolSettings", undo: Undo?, count: integer?): QuickeyPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "QuickeyPoolSettings", undo: Undo?): QuickeyPoolSettings
---@overload fun(class: nil, undo: Undo?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "QuickeyPoolSettings", undo: Undo?): QuickeyPoolSettings
---@overload fun(class: nil, undo: Undo?): QuickeyPoolSettings
---@deprecated use "Acquire" instead
function QuickeyPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "QuickeyPoolSettings", undo: Undo?, count: integer?): QuickeyPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "QuickeyPoolSettings"): QuickeyPoolSettings
---@overload fun(name: string, class: nil): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "QuickeyPoolSettings"): QuickeyPoolSettings
---@overload fun(name: string, class: nil): Object
function QuickeyPoolSettingsCollect:FindRecursive(name, class) end
