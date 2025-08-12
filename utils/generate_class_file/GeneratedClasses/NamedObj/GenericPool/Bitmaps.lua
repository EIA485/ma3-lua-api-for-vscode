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
---@overload fun(index: integer, class: "Bitmap", undo: Undo?): Bitmap
---@overload fun(index: integer, class: nil, undo: Undo?): Bitmap
function Bitmaps:Create(index, class, undo) end
---@overload fun(class: "Bitmap", undo: Undo?, count: integer?): Bitmap
---@overload fun(class: nil, undo: Undo?, count: integer?): Bitmap
function Bitmaps:Append(class, undo, count) end
---@overload fun(class: "Bitmap", undo: Undo?): Bitmap
---@overload fun(class: nil, undo: Undo?): Bitmap
function Bitmaps:Acquire(class, undo) end
---@overload fun(class: "Bitmap", undo: Undo?): Bitmap
---@overload fun(class: nil, undo: Undo?): Bitmap
---@deprecated use "Acquire" instead
function Bitmaps:Aquire(class, undo) end
---@overload fun(index: integer, class: "Bitmap", undo: Undo?, count: integer?): Bitmap
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Bitmap
function Bitmaps:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Bitmap"): Bitmap
---@overload fun(name: string, class: nil): Bitmap
function Bitmaps:Find(name, class) end
---@overload fun(name: string, class: "Bitmap"): Bitmap
---@overload fun(name: string, class: nil): Object
function Bitmaps:FindRecursive(name, class) end
