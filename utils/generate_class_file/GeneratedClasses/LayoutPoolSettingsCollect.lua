---@meta

---@class LayoutPoolSettingsCollect: Object
local LayoutPoolSettingsCollect = {}
---@return "LayoutPoolSettingsCollect"
function LayoutPoolSettingsCollect:GetClass() end
---@return "LayoutPoolSettings"
function LayoutPoolSettingsCollect:GetChildClass() end
---@generic T : LayoutPoolSettingsCollect
---@param class `T`
---@return boolean
function LayoutPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return LayoutPoolSettings
function LayoutPoolSettingsCollect:Ptr(index) end
---@return LayoutPoolSettings[]
function LayoutPoolSettingsCollect:Children() end
---@return LayoutPoolSettings?
function LayoutPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): LayoutPoolSettings
function LayoutPoolSettingsCollect:Get(name, role) end
---@generic T : LayoutPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Create(index, class, undo) end
---@generic T : LayoutPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Append(class, undo, count) end
---@generic T : LayoutPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Acquire(class, undo) end
---@generic T : LayoutPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutPoolSettings
---@deprecated use "Acquire" instead
function LayoutPoolSettingsCollect:Aquire(class, undo) end
---@generic T : LayoutPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : LayoutPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutPoolSettings
function LayoutPoolSettingsCollect:Find(class, undo) end
function LayoutPoolSettingsCollect:ActiveDisplay(property_name, property_value) end