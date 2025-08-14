---@meta

---@class SoundPoolSettingsCollect: Object
local SoundPoolSettingsCollect = {}
---@return "SoundPoolSettingsCollect"
function SoundPoolSettingsCollect:GetClass() end
---@return "SoundPoolSettings"
function SoundPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return SoundPoolSettings
function SoundPoolSettingsCollect:Ptr(index) end
---@return SoundPoolSettings[]
function SoundPoolSettingsCollect:Children() end
---@return SoundPoolSettings?
function SoundPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SoundPoolSettings
function SoundPoolSettingsCollect:Get(name, role) end
---@generic T : SoundPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SoundPoolSettings
function SoundPoolSettingsCollect:Create(index, class, undo) end
---@generic T : SoundPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SoundPoolSettings
function SoundPoolSettingsCollect:Append(class, undo, count) end
---@generic T : SoundPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoundPoolSettings
function SoundPoolSettingsCollect:Acquire(class, undo) end
---@generic T : SoundPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoundPoolSettings
---@deprecated use "Acquire" instead
function SoundPoolSettingsCollect:Aquire(class, undo) end
---@generic T : SoundPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SoundPoolSettings
function SoundPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SoundPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoundPoolSettings
function SoundPoolSettingsCollect:Find(class, undo) end