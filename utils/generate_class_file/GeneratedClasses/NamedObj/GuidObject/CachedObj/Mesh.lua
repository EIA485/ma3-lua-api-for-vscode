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
---@field Culling YesNo|boolean
local Mesh = {
    Culling="0"
}
---@return "Mesh"
function Mesh:GetClass() end
---@return "Material"
function Mesh:GetChildClass() end
---@generic T : Mesh
---@param class `T`
---@return boolean
function Mesh:IsClass(class) end
---@return Meshes
function Mesh:Parent() end
---@param index integer
---@return Material
function Mesh:Ptr(index) end
---@return Material[]
function Mesh:Children() end
---@return Material?
function Mesh:CurrentChild() end
---@return 38
function Mesh:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "FileName"
---@overload fun(idx: 21): "FilePath"
---@overload fun(idx: 22): "FileSize"
---@overload fun(idx: 23): "FileContent"
---@overload fun(idx: 24): "Source"
---@overload fun(idx: 25): "Installed"
---@overload fun(idx: 26): "IsResource"
---@overload fun(idx: 27): "InStream"
---@overload fun(idx: 28): "VerticesCount"
---@overload fun(idx: 29): "TriangleCount"
---@overload fun(idx: 30): "OrgVerticesCount"
---@overload fun(idx: 31): "OrgMeshCount"
---@overload fun(idx: 32): "ContentSize"
---@overload fun(idx: 33): "BoundingBox"
---@overload fun(idx: 34): "MeshCount"
---@overload fun(idx: 35): "Dimension"
---@overload fun(idx: 36): "Ratio"
---@overload fun(idx: 37): "Culling"
function Mesh:PropertyName(idx) end
---@overload fun(idx: 0|1|2|26|27): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|25|37): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|22|28|29|30|31|32|33|34|35|36): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|21|23): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 24): {ExportIgnore: True, EnumCollection: CachedObjectSource, ReadOnly: False, ImportIgnore: False}
function Mesh:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|22|25|26|27|28|29|30|32|34|37): "UInt32"
---@overload fun(idx: 7|12|17|18|20|21|23|33): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11|31): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|35|36): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 24): "UInt8"
function Mesh:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Dimension"|"Ratio", role: nil): Math.TVector<float>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Installed"|"IsResource"|"InStream"|"Culling", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"FileSize"|"VerticesCount"|"TriangleCount"|"OrgVerticesCount"|"OrgMeshCount"|"ContentSize"|"MeshCount", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"FileName"|"FilePath"|"FileContent"|"BoundingBox", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"VerticesCount"|"TriangleCount"|"OrgVerticesCount"|"OrgMeshCount"|"ContentSize"|"BoundingBox"|"MeshCount"|"Dimension"|"Ratio"|"Culling", role: Enums.Roles): string
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
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Source", property_value: CachedObjectSource, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Dimension"|"Ratio", property_value: Math.TVector<float>, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Installed"|"IsResource"|"InStream"|"Culling", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"FileSize"|"VerticesCount"|"TriangleCount"|"OrgVerticesCount"|"OrgMeshCount"|"ContentSize"|"MeshCount", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"FileName"|"FilePath"|"FileContent"|"BoundingBox", property_value: string, override_change_level: ChangeLevel?)
function Mesh:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Invisible", property_value: YesNo|boolean)
---@overload fun(property_name: "Invisible", property_value: YesNo|boolean)
---@overload fun(property_name: "Texture"|"Cont.Size"|"Cont.Ref", property_value: integer)
function Mesh:Invisible(property_name, property_value) end