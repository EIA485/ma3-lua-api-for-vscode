---@meta

---@class SoundChannels: Object
local SoundChannels = {}
---@return "SoundChannels"
function SoundChannels:GetClass() end
---@return "SoundChannel"
function SoundChannels:GetChildClass() end
---@param index integer
---@return SoundChannel
function SoundChannels:Ptr(index) end
---@return SoundChannel[]
function SoundChannels:Children() end
---@return SoundChannel?
function SoundChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): SoundChannel
function SoundChannels:Get(name, role) end
---@generic T : SoundChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SoundChannel
function SoundChannels:Create(index, class, undo) end
---@generic T : SoundChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SoundChannel
function SoundChannels:Append(class, undo, count) end
---@generic T : SoundChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoundChannel
function SoundChannels:Acquire(class, undo) end
---@generic T : SoundChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoundChannel
---@deprecated use "Acquire" instead
function SoundChannels:Aquire(class, undo) end
---@generic T : SoundChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SoundChannel
function SoundChannels:Insert(index, class, undo, count) end
---@generic T : SoundChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SoundChannel
function SoundChannels:Find(class, undo) end