---@meta

---@class QuickeyPoolSettingsCollect: Object
local QuickeyPoolSettingsCollect = {}
---@return "QuickeyPoolSettingsCollect"
function QuickeyPoolSettingsCollect:GetClass() end
---@return "QuickeyPoolSettings"
function QuickeyPoolSettingsCollect:GetChildClass() end
---@generic T : QuickeyPoolSettingsCollect
---@param class `T`
---@return boolean
function QuickeyPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Ptr(index) end
---@return QuickeyPoolSettings[]
function QuickeyPoolSettingsCollect:Children() end
---@return QuickeyPoolSettings?
function QuickeyPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Get(name, role) end
---@generic T : QuickeyPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Create(index, class, undo) end
---@generic T : QuickeyPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Append(class, undo, count) end
---@generic T : QuickeyPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Acquire(class, undo) end
---@generic T : QuickeyPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): QuickeyPoolSettings
---@deprecated use "Acquire" instead
function QuickeyPoolSettingsCollect:Aquire(class, undo) end
---@generic T : QuickeyPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : QuickeyPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): QuickeyPoolSettings
function QuickeyPoolSettingsCollect:Find(class, undo) end
function QuickeyPoolSettingsCollect:Color(property_name, property_value) end