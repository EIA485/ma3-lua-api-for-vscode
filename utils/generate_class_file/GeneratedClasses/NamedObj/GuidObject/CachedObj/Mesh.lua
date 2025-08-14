---@meta

---@class Mesh: CachedObj
---@field VerticesCount integer
---@field TriangleCount integer
---@field OrgVerticesCount integer
---@field OrgMeshCount integer
---@field ContentSize integer
---@field BoundingBox string
---@field MeshCount integer
---@field Dimension Math.TVector<float>
---@field Ratio Math.TVector<float>
---@field Culling integer
local Mesh = {
    Culling="0"
}
---@return "Mesh"
function Mesh:GetClass() end
---@return "Material"
function Mesh:GetChildClass() end
---@return Meshes
function Mesh:Parent() end
---@param index integer
---@return Material
function Mesh:Ptr(index) end
---@return Material[]
function Mesh:Children() end
---@return Material?
function Mesh:CurrentChild() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Dimension"|"Ratio", role: nil): Math.TVector<float>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "VerticesCount"|"TriangleCount"|"OrgVerticesCount"|"OrgMeshCount"|"ContentSize"|"MeshCount"|"Culling"|"FileSize"|"Installed"|"IsResource"|"InStream"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "BoundingBox"|"FileName"|"FilePath"|"FileContent"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "VerticesCount"|"TriangleCount"|"OrgVerticesCount"|"OrgMeshCount"|"ContentSize"|"BoundingBox"|"MeshCount"|"Dimension"|"Ratio"|"Culling"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Material
function Mesh:Get(name, role) end
---@generic T : UserMaterial
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Material", undo: Undo?): Material
---@overload fun(index: integer, class: nil, undo: Undo?): Material
function Mesh:Create(index, class, undo) end
---@generic T : UserMaterial
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(class: nil, undo: Undo?, count: integer?): Material
function Mesh:Append(class, undo, count) end
---@generic T : UserMaterial
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: nil, undo: Undo?): Material
function Mesh:Acquire(class, undo) end
---@generic T : UserMaterial
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: nil, undo: Undo?): Material
---@deprecated use "Acquire" instead
function Mesh:Aquire(class, undo) end
---@generic T : UserMaterial
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Material
function Mesh:Insert(index, class, undo, count) end
---@generic T : UserMaterial
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: nil, undo: Undo?): Material
function Mesh:Find(class, undo) end