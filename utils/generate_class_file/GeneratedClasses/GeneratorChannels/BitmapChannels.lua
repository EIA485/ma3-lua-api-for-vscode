---@meta

---@class BitmapChannels: GeneratorChannels
local BitmapChannels = {}
---@return "BitmapChannels"
function BitmapChannels:GetClass() end
---@return "BitmapChannel"
function BitmapChannels:GetChildClass() end
---@return Bitmap
function BitmapChannels:Parent() end
---@param index integer
---@return BitmapChannel
function BitmapChannels:Ptr(index) end
---@return BitmapChannel[]
function BitmapChannels:Children() end
---@return BitmapChannel?
function BitmapChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): BitmapChannel
function BitmapChannels:Get(name, role) end
---@generic T : BitmapChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): BitmapChannel
function BitmapChannels:Create(index, class, undo) end
---@generic T : BitmapChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): BitmapChannel
function BitmapChannels:Append(class, undo, count) end
---@generic T : BitmapChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapChannel
function BitmapChannels:Acquire(class, undo) end
---@generic T : BitmapChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapChannel
---@deprecated use "Acquire" instead
function BitmapChannels:Aquire(class, undo) end
---@generic T : BitmapChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BitmapChannel
function BitmapChannels:Insert(index, class, undo, count) end
---@generic T : BitmapChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapChannel
function BitmapChannels:Find(class, undo) end