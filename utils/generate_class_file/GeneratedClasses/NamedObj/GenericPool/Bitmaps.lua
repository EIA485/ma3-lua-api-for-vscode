---@meta

---@class Bitmaps: GenericPool
local Bitmaps = {}
---@return "Bitmaps"
function Bitmaps:GetClass() end
---@return "Bitmap"
function Bitmaps:GetChildClass() end
---@return GeneratorTypes
function Bitmaps:Parent() end
---@param index integer
---@return Bitmap
function Bitmaps:Ptr(index) end
---@return Bitmap[]
function Bitmaps:Children() end
---@return Bitmap?
function Bitmaps:CurrentChild() end
---@overload fun(name: integer, role: nil): Bitmap
function Bitmaps:Get(name, role) end
---@generic T : Bitmap
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Bitmap
function Bitmaps:Create(index, class, undo) end
---@generic T : Bitmap
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Bitmap
function Bitmaps:Append(class, undo, count) end
---@generic T : Bitmap
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Bitmap
function Bitmaps:Acquire(class, undo) end
---@generic T : Bitmap
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Bitmap
---@deprecated use "Acquire" instead
function Bitmaps:Aquire(class, undo) end
---@generic T : Bitmap
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Bitmap
function Bitmaps:Insert(index, class, undo, count) end
---@generic T : Bitmap
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Bitmap
function Bitmaps:Find(class, undo) end