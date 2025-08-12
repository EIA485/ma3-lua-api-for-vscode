---@meta

---@class FixtureFilterRulePatch: FilterRuleFixture
---@field FilterValue string
local FixtureFilterRulePatch = {}
---@return "FixtureFilterRulePatch"
function FixtureFilterRulePatch:GetClass() end
---@return "Object"
function FixtureFilterRulePatch:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Invert", role: nil): integer
---@overload fun(name: "FilterValue", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Invert"|"FilterValue", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRulePatch:Get(name, role) end
