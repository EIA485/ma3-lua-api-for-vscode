---@meta

---@class Gel: GuidObject A definition of a Gel
---@field Key string
---@field Color Colors.RGB<float>
---@field R number
---@field G number
---@field B number
local Gel = {
    Color="1,1,1",
    R="1",
    G="1",
    B="1"
}
---@return "Gel"
function Gel:GetClass() end
---@return "Object"
function Gel:GetChildClass() end
---@return GelPool
function Gel:Parent() end
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
---@overload fun(name: "Key", role: nil): string
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "R"|"G"|"B", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Key"|"Color"|"R"|"G"|"B", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Gel:Get(name, role) end
