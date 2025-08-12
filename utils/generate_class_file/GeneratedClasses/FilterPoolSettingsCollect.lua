---@meta

---@class FilterPoolSettingsCollect: Object
local FilterPoolSettingsCollect = {}
---@return "FilterPoolSettingsCollect"
function FilterPoolSettingsCollect:GetClass() end
---@return "FilterPoolSettings"
function FilterPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return FilterPoolSettings
function FilterPoolSettingsCollect:Ptr(index) end
---@return FilterPoolSettings[]
function FilterPoolSettingsCollect:Children() end
---@return FilterPoolSettings?
function FilterPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): FilterPoolSettings
function FilterPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "FilterPoolSettings", undo: Undo?): FilterPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): FilterPoolSettings
function FilterPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "FilterPoolSettings", undo: Undo?, count: integer?): FilterPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): FilterPoolSettings
function FilterPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "FilterPoolSettings", undo: Undo?): FilterPoolSettings
---@overload fun(class: nil, undo: Undo?): FilterPoolSettings
function FilterPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "FilterPoolSettings", undo: Undo?): FilterPoolSettings
---@overload fun(class: nil, undo: Undo?): FilterPoolSettings
---@deprecated use "Acquire" instead
function FilterPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "FilterPoolSettings", undo: Undo?, count: integer?): FilterPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FilterPoolSettings
function FilterPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FilterPoolSettings"): FilterPoolSettings
---@overload fun(name: string, class: nil): FilterPoolSettings
function FilterPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "FilterPoolSettings"): FilterPoolSettings
---@overload fun(name: string, class: nil): Object
function FilterPoolSettingsCollect:FindRecursive(name, class) end
