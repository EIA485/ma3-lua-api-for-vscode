---@meta

---@class SequencePoolSettingsCollect: Object
local SequencePoolSettingsCollect = {}
---@return "SequencePoolSettingsCollect"
function SequencePoolSettingsCollect:GetClass() end
---@return "SequencePoolSettings"
function SequencePoolSettingsCollect:GetChildClass() end
---@param index integer
---@return SequencePoolSettings
function SequencePoolSettingsCollect:Ptr(index) end
---@return SequencePoolSettings[]
function SequencePoolSettingsCollect:Children() end
---@return SequencePoolSettings?
function SequencePoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SequencePoolSettings
function SequencePoolSettingsCollect:Get(name, role) end
---@generic T : SequencePoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SequencePoolSettings
function SequencePoolSettingsCollect:Create(index, class, undo) end
---@generic T : SequencePoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SequencePoolSettings
function SequencePoolSettingsCollect:Append(class, undo, count) end
---@generic T : SequencePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequencePoolSettings
function SequencePoolSettingsCollect:Acquire(class, undo) end
---@generic T : SequencePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequencePoolSettings
---@deprecated use "Acquire" instead
function SequencePoolSettingsCollect:Aquire(class, undo) end
---@generic T : SequencePoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SequencePoolSettings
function SequencePoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SequencePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequencePoolSettings
function SequencePoolSettingsCollect:Find(class, undo) end