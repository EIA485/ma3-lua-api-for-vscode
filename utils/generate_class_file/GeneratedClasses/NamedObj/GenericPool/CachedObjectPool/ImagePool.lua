---@meta

---@class ImagePool: CachedObjectPool
local ImagePool = {}
---@return "ImagePool"
function ImagePool:GetClass() end
---@return "Image"
function ImagePool:GetChildClass() end
---@param index integer
---@return Image
function ImagePool:Ptr(index) end
---@return Image[]
function ImagePool:Children() end
---@return Image?
function ImagePool:CurrentChild() end
---@overload fun(name: integer, role: nil): Image
function ImagePool:Get(name, role) end
---@overload fun(index: integer, class: "Image", undo: Undo?): Image
---@overload fun(index: integer, class: nil, undo: Undo?): Image
function ImagePool:Create(index, class, undo) end
---@overload fun(class: "Image", undo: Undo?, count: integer?): Image
---@overload fun(class: nil, undo: Undo?, count: integer?): Image
function ImagePool:Append(class, undo, count) end
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: nil, undo: Undo?): Image
function ImagePool:Acquire(class, undo) end
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: nil, undo: Undo?): Image
---@deprecated use "Acquire" instead
function ImagePool:Aquire(class, undo) end
---@overload fun(index: integer, class: "Image", undo: Undo?, count: integer?): Image
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Image
function ImagePool:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Image"): Image
---@overload fun(name: string, class: nil): Image
function ImagePool:Find(name, class) end
---@overload fun(name: string, class: "Image"): Image
---@overload fun(name: string, class: nil): Object
function ImagePool:FindRecursive(name, class) end
