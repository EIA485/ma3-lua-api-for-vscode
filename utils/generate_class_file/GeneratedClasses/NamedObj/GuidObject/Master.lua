---@meta

---@class Master: GuidObject Controls several global parameters like grandmaster dimming etc.
---@field NormedValue integer
---@field FaderEnable integer
---@field SpeedScale integer
local Master = {
    NormedValue="100",
    FaderEnable="Toggle",
    SpeedScale="100"
}
---@return "Master"
function Master:GetClass() end
---@return "Object"
function Master:GetChildClass() end
---@return MasterPool
function Master:Parent() end
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
---@overload fun(name: "NormedValue"|"FaderEnable"|"SpeedScale", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"NormedValue"|"FaderEnable"|"SpeedScale", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Master:Get(name, role) end
