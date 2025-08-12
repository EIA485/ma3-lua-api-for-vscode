---@meta

---@class Personality: Object Personality
---@field PersonalityId integer
---@field DmxFootPrint integer
---@field DMXMode DMXMode
local Personality = {
    PersonalityId="0",
    DmxFootPrint="0"
}
---@return "Personality"
function Personality:GetClass() end
---@return "Object"
function Personality:GetChildClass() end
---@return FTRDMPersonalityCollect
function Personality:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"PersonalityId"|"DmxFootPrint", role: nil): integer
---@overload fun(name: "DMXMode", role: nil): DMXMode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PersonalityId"|"DmxFootPrint"|"DMXMode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Personality:Get(name, role) end
