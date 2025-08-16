---@meta

---@class BitmapPoolSettingsCollect: Object
local BitmapPoolSettingsCollect = {}
---@return "BitmapPoolSettingsCollect"
function BitmapPoolSettingsCollect:GetClass() end
---@return "BitmapPoolSettings"
function BitmapPoolSettingsCollect:GetChildClass() end
---@generic T : BitmapPoolSettingsCollect
---@param class `T`
---@return boolean
function BitmapPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return BitmapPoolSettings
function BitmapPoolSettingsCollect:Ptr(index) end
---@return BitmapPoolSettings[]
function BitmapPoolSettingsCollect:Children() end
---@return BitmapPoolSettings?
function BitmapPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): BitmapPoolSettings
function BitmapPoolSettingsCollect:Get(name, role) end
---@generic T : BitmapPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Create(index, class, undo) end
---@generic T : BitmapPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Append(class, undo, count) end
---@generic T : BitmapPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Acquire(class, undo) end
---@generic T : BitmapPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapPoolSettings
---@deprecated use "Acquire" instead
function BitmapPoolSettingsCollect:Aquire(class, undo) end
---@generic T : BitmapPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : BitmapPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapPoolSettings
function BitmapPoolSettingsCollect:Find(class, undo) end
function BitmapPoolSettingsCollect:SetChildren(property_name, property_value) end