---@meta

---@class Gamut: NamedObj
---@field Points Colors.CIE<float>[]
local Gamut = {}
---@return "Gamut"
function Gamut:GetClass() end
---@return "Object"
function Gamut:GetChildClass() end
---@return GamutCollect
function Gamut:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Points", role: nil): Colors.CIE<float>[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Points", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Gamut:Get(name, role) end
