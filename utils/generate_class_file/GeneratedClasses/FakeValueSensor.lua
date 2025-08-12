---@meta

---@class FakeValueSensor: Object
---@field Present
Value integer
---@field Lowest integer
---@field Highest integer
---@field Recorded integer
local FakeValueSensor = {
    Lowest="-",
    Highest="-",
    Recorded="-"
}
---@return "FakeValueSensor"
function FakeValueSensor:GetClass() end
---@return "Object"
function FakeValueSensor:GetChildClass() end
---@return RDMFixture
function FakeValueSensor:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Present
Value"|"Lowest"|"Highest"|"Recorded", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Present
Value"|"Lowest"|"Highest"|"Recorded", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FakeValueSensor:Get(name, role) end
