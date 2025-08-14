---@meta

---@class Meshes: CachedObjectPool
local Meshes = {}
---@return "Meshes"
function Meshes:GetClass() end
---@return "Mesh"
function Meshes:GetChildClass() end
---@return ShowData
function Meshes:Parent() end
---@param index integer
---@return Mesh
function Meshes:Ptr(index) end
---@return Mesh[]
function Meshes:Children() end
---@return Mesh?
function Meshes:CurrentChild() end
---@overload fun(name: integer, role: nil): Mesh
function Meshes:Get(name, role) end
---@generic T : Mesh
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Mesh
function Meshes:Create(index, class, undo) end
---@generic T : Mesh
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Mesh
function Meshes:Append(class, undo, count) end
---@generic T : Mesh
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Mesh
function Meshes:Acquire(class, undo) end
---@generic T : Mesh
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Mesh
---@deprecated use "Acquire" instead
function Meshes:Aquire(class, undo) end
---@generic T : Mesh
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Mesh
function Meshes:Insert(index, class, undo, count) end
---@generic T : Mesh
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Mesh
function Meshes:Find(class, undo) end