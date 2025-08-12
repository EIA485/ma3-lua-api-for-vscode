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
---@overload fun(index: integer, class: "Mesh", undo: Undo?): Mesh
---@overload fun(index: integer, class: "UserMesh", undo: Undo?): UserMesh
---@overload fun(index: integer, class: nil, undo: Undo?): Mesh
function Meshes:Create(index, class, undo) end
---@overload fun(class: "Mesh", undo: Undo?, count: integer?): Mesh
---@overload fun(class: "UserMesh", undo: Undo?, count: integer?): UserMesh
---@overload fun(class: nil, undo: Undo?, count: integer?): Mesh
function Meshes:Append(class, undo, count) end
---@overload fun(class: "Mesh", undo: Undo?): Mesh
---@overload fun(class: "UserMesh", undo: Undo?): UserMesh
---@overload fun(class: nil, undo: Undo?): Mesh
function Meshes:Acquire(class, undo) end
---@overload fun(class: "Mesh", undo: Undo?): Mesh
---@overload fun(class: "UserMesh", undo: Undo?): UserMesh
---@overload fun(class: nil, undo: Undo?): Mesh
---@deprecated use "Acquire" instead
function Meshes:Aquire(class, undo) end
---@overload fun(index: integer, class: "Mesh", undo: Undo?, count: integer?): Mesh
---@overload fun(index: integer, class: "UserMesh", undo: Undo?, count: integer?): UserMesh
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Mesh
function Meshes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Mesh"): Mesh
---@overload fun(name: string, class: "UserMesh"): UserMesh
---@overload fun(name: string, class: nil): Mesh
function Meshes:Find(name, class) end
---@overload fun(name: string, class: "Mesh"): Mesh
---@overload fun(name: string, class: "UserMesh"): UserMesh
---@overload fun(name: string, class: nil): Object
function Meshes:FindRecursive(name, class) end
