---@meta

---@class PatchFakeObject: Object
---@field Stage integer
---@field FixtureID integer
---@field IDType integer
---@field CID integer
---@field Name string
---@field FixtureType integer
---@field Patch DMXPropertyAddress
---@field Layer string
---@field Class string
---@field PosX string
---@field PosY string
---@field PosZ string
local PatchFakeObject = {
    Stage="1",
    FixtureID="None",
    IDType="Fixture",
    CID="None",
    Layer="None",
    Class="None",
    PosX="0.000m",
    PosY="0.000m",
    PosZ="0.000m"
}
---@return "PatchFakeObject"
function PatchFakeObject:GetClass() end
---@return "Object"
function PatchFakeObject:GetChildClass() end
---@return PatchFakeCollect
function PatchFakeObject:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Stage"|"FixtureID"|"IDType"|"CID", role: nil): integer
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "FixtureType", role: nil): integer
---@overload fun(name: "Patch", role: nil): DMXPropertyAddress
---@overload fun(name: "Layer"|"Class"|"PosX"|"PosY"|"PosZ", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Stage"|"FixtureID"|"IDType"|"CID"|"Name"|"FixtureType"|"Patch"|"Layer"|"Class"|"PosX"|"PosY"|"PosZ", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PatchFakeObject:Get(name, role) end
