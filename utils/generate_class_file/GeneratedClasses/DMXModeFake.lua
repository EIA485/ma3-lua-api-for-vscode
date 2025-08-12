---@meta

---@class DMXModeFake: Object This is NOT a DMXMode, but a mere reference to one
---@field DMRef Object
---@field Used integer
local DMXModeFake = {
    Used="0"
}
---@return "DMXModeFake"
function DMXModeFake:GetClass() end
---@return "Object"
function DMXModeFake:GetChildClass() end
---@return FixtureTypeFake
function DMXModeFake:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "DMRef", role: nil): Object
---@overload fun(name: "Used", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DMRef"|"Used", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DMXModeFake:Get(name, role) end
