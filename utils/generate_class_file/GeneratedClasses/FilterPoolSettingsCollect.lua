---@meta

---@class FilterPoolSettingsCollect: Object
local FilterPoolSettingsCollect = {}
---@return "FilterPoolSettingsCollect"
function FilterPoolSettingsCollect:GetClass() end
---@return "FilterPoolSettings"
function FilterPoolSettingsCollect:GetChildClass() end
---@generic T : FilterPoolSettingsCollect
---@param class `T`
---@return boolean
function FilterPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return FilterPoolSettings
function FilterPoolSettingsCollect:Ptr(index) end
---@return FilterPoolSettings[]
function FilterPoolSettingsCollect:Children() end
---@return FilterPoolSettings?
function FilterPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): FilterPoolSettings
function FilterPoolSettingsCollect:Get(name, role) end
---@generic T : FilterPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FilterPoolSettings
function FilterPoolSettingsCollect:Create(index, class, undo) end
---@generic T : FilterPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FilterPoolSettings
function FilterPoolSettingsCollect:Append(class, undo, count) end
---@generic T : FilterPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterPoolSettings
function FilterPoolSettingsCollect:Acquire(class, undo) end
---@generic T : FilterPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterPoolSettings
---@deprecated use "Acquire" instead
function FilterPoolSettingsCollect:Aquire(class, undo) end
---@generic T : FilterPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FilterPoolSettings
function FilterPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : FilterPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterPoolSettings
function FilterPoolSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "Action", property_value: FilterAction)
---@overload fun(property_name: "Action", property_value: FilterAction)
function FilterPoolSettingsCollect:SetChildren(property_name, property_value) end