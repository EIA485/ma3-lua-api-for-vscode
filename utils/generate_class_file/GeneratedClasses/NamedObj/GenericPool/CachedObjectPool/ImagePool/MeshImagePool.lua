---@meta

---@class MeshImagePool: ImagePool
local MeshImagePool = {}
---@return "MeshImagePool"
function MeshImagePool:GetClass() end
---@return "MeshImage"
function MeshImagePool:GetChildClass() end
---@generic T : MeshImagePool
---@param class `T`
---@return boolean
function MeshImagePool:IsClass(class) end
---@param index integer
---@return MeshImage
function MeshImagePool:Ptr(index) end
---@return MeshImage[]
function MeshImagePool:Children() end
---@return MeshImage?
function MeshImagePool:CurrentChild() end
---@overload fun(name: integer, role: nil): MeshImage
function MeshImagePool:Get(name, role) end
---@generic T : MeshImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MeshImage
function MeshImagePool:Create(index, class, undo) end
---@generic T : MeshImage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MeshImage
function MeshImagePool:Append(class, undo, count) end
---@generic T : MeshImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MeshImage
function MeshImagePool:Acquire(class, undo) end
---@generic T : MeshImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MeshImage
---@deprecated use "Acquire" instead
function MeshImagePool:Aquire(class, undo) end
---@generic T : MeshImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MeshImage
function MeshImagePool:Insert(index, class, undo, count) end
---@generic T : MeshImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MeshImage
function MeshImagePool:Find(class, undo) end
function MeshImagePool:SetChildren(property_name, property_value) end