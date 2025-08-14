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
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreEnforceUniqueChildNames"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreEnforceUniqueChildNames"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Geometries:Get(name, role) end
function Geometries:Create(index, class, undo) end
function Geometries:Append(class, undo, count) end
function Geometries:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function Geometries:Aquire(class, undo) end
function Geometries:Insert(index, class, undo, count) end
function Geometries:Find(class, undo) end