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
---@overload fun(index: integer, class: "SoundChannel", undo: Undo?): SoundChannel
---@overload fun(index: integer, class: nil, undo: Undo?): SoundChannel
function SoundChannels:Create(index, class, undo) end
---@overload fun(class: "SoundChannel", undo: Undo?, count: integer?): SoundChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): SoundChannel
function SoundChannels:Append(class, undo, count) end
---@overload fun(class: "SoundChannel", undo: Undo?): SoundChannel
---@overload fun(class: nil, undo: Undo?): SoundChannel
function SoundChannels:Acquire(class, undo) end
---@overload fun(class: "SoundChannel", undo: Undo?): SoundChannel
---@overload fun(class: nil, undo: Undo?): SoundChannel
---@deprecated use "Acquire" instead
function SoundChannels:Aquire(class, undo) end
---@overload fun(index: integer, class: "SoundChannel", undo: Undo?, count: integer?): SoundChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SoundChannel
function SoundChannels:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SoundChannel"): SoundChannel
---@overload fun(name: string, class: nil): SoundChannel
function SoundChannels:Find(name, class) end
---@overload fun(name: string, class: "SoundChannel"): SoundChannel
---@overload fun(name: string, class: nil): Object
function SoundChannels:FindRecursive(name, class) end
