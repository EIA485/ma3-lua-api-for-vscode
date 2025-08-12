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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FileName"|"FilePath", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "FileContent", role: nil): string
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Installed"|"IsResource"|"InStream"|"VerticesCount"|"TriangleCount"|"OrgVerticesCount"|"OrgMeshCount"|"ContentSize", role: nil): integer
---@overload fun(name: "BoundingBox", role: nil): string
---@overload fun(name: "MeshCount", role: nil): integer
---@overload fun(name: "Dimension"|"Ratio", role: nil): Math.TVector<float>
---@overload fun(name: "Culling", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"VerticesCount"|"TriangleCount"|"OrgVerticesCount"|"OrgMeshCount"|"ContentSize"|"BoundingBox"|"MeshCount"|"Dimension"|"Ratio"|"Culling", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Material
function Mesh:Get(name, role) end
---@overload fun(index: integer, class: "Material", undo: Undo?): Material
---@overload fun(index: integer, class: "UserMaterial", undo: Undo?): UserMaterial
---@overload fun(index: integer, class: nil, undo: Undo?): Material
function Mesh:Create(index, class, undo) end
---@overload fun(class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(class: "UserMaterial", undo: Undo?, count: integer?): UserMaterial
---@overload fun(class: nil, undo: Undo?, count: integer?): Material
function Mesh:Append(class, undo, count) end
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "UserMaterial", undo: Undo?): UserMaterial
---@overload fun(class: nil, undo: Undo?): Material
function Mesh:Acquire(class, undo) end
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "UserMaterial", undo: Undo?): UserMaterial
---@overload fun(class: nil, undo: Undo?): Material
---@deprecated use "Acquire" instead
function Mesh:Aquire(class, undo) end
---@overload fun(index: integer, class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(index: integer, class: "UserMaterial", undo: Undo?, count: integer?): UserMaterial
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Material
function Mesh:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Material"): Material
---@overload fun(name: string, class: "UserMaterial"): UserMaterial
---@overload fun(name: string, class: nil): Material
function Mesh:Find(name, class) end
---@overload fun(name: string, class: "Material"): Material
---@overload fun(name: string, class: "UserMaterial"): UserMaterial
---@overload fun(name: string, class: nil): Object
function Mesh:FindRecursive(name, class) end
