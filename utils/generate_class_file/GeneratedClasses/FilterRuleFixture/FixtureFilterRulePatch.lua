---@meta

---@class FixtureFilterRulePatch: FilterRuleFixture
---@field FilterValue string
local FixtureFilterRulePatch = {}
---@return "FixtureFilterRulePatch"
function FixtureFilterRulePatch:GetClass() end
---@return "Object"
function FixtureFilterRulePatch:GetChildClass() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Invert"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "FilterValue"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "FilterValue"|"Invert"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRulePatch:Get(name, role) end