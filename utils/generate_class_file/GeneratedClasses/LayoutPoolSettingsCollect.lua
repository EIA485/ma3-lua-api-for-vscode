---@meta

---@class LayoutPoolSettingsCollect: Object
local LayoutPoolSettingsCollect = {}
---@return "LayoutPoolSettingsCollect"
function LayoutPoolSettingsCollect:GetClass() end
---@return "LayoutPoolSettings"
function LayoutPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return LayoutPoolSettings
function LayoutPoolSettingsCollect:Ptr(index) end
---@return LayoutPoolSettings[]
function LayoutPoolSettingsCollect:Children() end
---@return LayoutPoolSettings?
function LayoutPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): LayoutPoolSettings
function LayoutPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "LayoutPoolSettings", undo: Undo?): LayoutPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "LayoutPoolSettings", undo: Undo?, count: integer?): LayoutPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "LayoutPoolSettings", undo: Undo?): LayoutPoolSettings
---@overload fun(class: nil, undo: Undo?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "LayoutPoolSettings", undo: Undo?): LayoutPoolSettings
---@overload fun(class: nil, undo: Undo?): LayoutPoolSettings
---@deprecated use "Acquire" instead
function LayoutPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "LayoutPoolSettings", undo: Undo?, count: integer?): LayoutPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "LayoutPoolSettings"): LayoutPoolSettings
---@overload fun(name: string, class: nil): LayoutPoolSettings
function LayoutPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "LayoutPoolSettings"): LayoutPoolSettings
---@overload fun(name: string, class: nil): Object
function LayoutPoolSettingsCollect:FindRecursive(name, class) end
