---@meta

---@class PoolSettingsCollect: Object
local PoolSettingsCollect = {}
---@return "PoolSettingsCollect"
function PoolSettingsCollect:GetClass() end
---@return "PoolSettings"
function PoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PoolSettings
function PoolSettingsCollect:Ptr(index) end
---@return PoolSettings[]
function PoolSettingsCollect:Children() end
---@return PoolSettings?
function PoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PoolSettings
function PoolSettingsCollect:Get(name, role) end
---@generic T : PoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PoolSettings
function PoolSettingsCollect:Create(index, class, undo) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PoolSettings
function PoolSettingsCollect:Append(class, undo, count) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolSettings
function PoolSettingsCollect:Acquire(class, undo) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolSettings
---@deprecated use "Acquire" instead
function PoolSettingsCollect:Aquire(class, undo) end
---@generic T : PoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PoolSettings
function PoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolSettings
function PoolSettingsCollect:Find(class, undo) end