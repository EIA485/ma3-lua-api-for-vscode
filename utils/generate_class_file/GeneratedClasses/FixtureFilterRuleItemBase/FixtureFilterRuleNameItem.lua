---@meta

---@class FixtureFilterRuleNameItem: FixtureFilterRuleItemBase
---@field NameFilter string
local FixtureFilterRuleNameItem = {}
---@return "FixtureFilterRuleNameItem"
function FixtureFilterRuleNameItem:GetClass() end
---@return "Object"
function FixtureFilterRuleNameItem:GetChildClass() end
---@return FixtureFilterRuleName
function FixtureFilterRuleNameItem:Parent() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameFilter"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "NameFilter"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRuleNameItem:Get(name, role) end