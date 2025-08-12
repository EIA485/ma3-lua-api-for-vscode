---@meta

---@class Facet: NamedObj Describes a slot in a wheel with name, color and gobo etc.
---@field Color Colors.RGB<float>
---@field Rotation Math.TMatrix3x3<float>
local Facet = {
    Color="1.000000,1.000000,1.000000,1.000000",
    Rotation="{1.000000,0.000000,0.000000}{0.000000,1.000000,0.000000}{0.000000,0.000000,1.000000}"
}
---@return "Facet"
function Facet:GetClass() end
---@return "Object"
function Facet:GetChildClass() end
---@return Slot
function Facet:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "Rotation", role: nil): Math.TMatrix3x3<float>
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Color"|"Rotation", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Facet:Get(name, role) end
