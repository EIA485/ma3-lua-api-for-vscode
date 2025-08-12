---@meta

---@class Geometries: Object A container for all geometries in a fixture type.
---@field IgnoreEnforceUniqueChildNames integer
local Geometries = {}
---@return "Geometries"
function Geometries:GetClass() end
---@return "Geometry"
function Geometries:GetChildClass() end
---@return FixtureType
function Geometries:Parent() end
---@param index integer
---@return Geometry
function Geometries:Ptr(index) end
---@return Geometry[]
function Geometries:Children() end
---@return Geometry?
function Geometries:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"IgnoreEnforceUniqueChildNames", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IgnoreEnforceUniqueChildNames", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Geometries:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function Geometries:FindRecursive(name, class) end
