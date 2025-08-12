---@meta

---@class MeshImagePool: ImagePool
local MeshImagePool = {}
---@return "MeshImagePool"
function MeshImagePool:GetClass() end
---@return "MeshImage"
function MeshImagePool:GetChildClass() end
---@param index integer
---@return MeshImage
function MeshImagePool:Ptr(index) end
---@return MeshImage[]
function MeshImagePool:Children() end
---@return MeshImage?
function MeshImagePool:CurrentChild() end
---@overload fun(name: integer, role: nil): MeshImage
function MeshImagePool:Get(name, role) end
---@overload fun(index: integer, class: "MeshImage", undo: Undo?): MeshImage
---@overload fun(index: integer, class: nil, undo: Undo?): MeshImage
function MeshImagePool:Create(index, class, undo) end
---@overload fun(class: "MeshImage", undo: Undo?, count: integer?): MeshImage
---@overload fun(class: nil, undo: Undo?, count: integer?): MeshImage
function MeshImagePool:Append(class, undo, count) end
---@overload fun(class: "MeshImage", undo: Undo?): MeshImage
---@overload fun(class: nil, undo: Undo?): MeshImage
function MeshImagePool:Acquire(class, undo) end
---@overload fun(class: "MeshImage", undo: Undo?): MeshImage
---@overload fun(class: nil, undo: Undo?): MeshImage
---@deprecated use "Acquire" instead
function MeshImagePool:Aquire(class, undo) end
---@overload fun(index: integer, class: "MeshImage", undo: Undo?, count: integer?): MeshImage
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MeshImage
function MeshImagePool:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MeshImage"): MeshImage
---@overload fun(name: string, class: nil): MeshImage
function MeshImagePool:Find(name, class) end
---@overload fun(name: string, class: "MeshImage"): MeshImage
---@overload fun(name: string, class: nil): Object
function MeshImagePool:FindRecursive(name, class) end
