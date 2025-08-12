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
---@overload fun(index: integer, class: "BitmapChannel", undo: Undo?): BitmapChannel
---@overload fun(index: integer, class: nil, undo: Undo?): BitmapChannel
function BitmapChannels:Create(index, class, undo) end
---@overload fun(class: "BitmapChannel", undo: Undo?, count: integer?): BitmapChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): BitmapChannel
function BitmapChannels:Append(class, undo, count) end
---@overload fun(class: "BitmapChannel", undo: Undo?): BitmapChannel
---@overload fun(class: nil, undo: Undo?): BitmapChannel
function BitmapChannels:Acquire(class, undo) end
---@overload fun(class: "BitmapChannel", undo: Undo?): BitmapChannel
---@overload fun(class: nil, undo: Undo?): BitmapChannel
---@deprecated use "Acquire" instead
function BitmapChannels:Aquire(class, undo) end
---@overload fun(index: integer, class: "BitmapChannel", undo: Undo?, count: integer?): BitmapChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BitmapChannel
function BitmapChannels:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "BitmapChannel"): BitmapChannel
---@overload fun(name: string, class: nil): BitmapChannel
function BitmapChannels:Find(name, class) end
---@overload fun(name: string, class: "BitmapChannel"): BitmapChannel
---@overload fun(name: string, class: nil): Object
function BitmapChannels:FindRecursive(name, class) end
