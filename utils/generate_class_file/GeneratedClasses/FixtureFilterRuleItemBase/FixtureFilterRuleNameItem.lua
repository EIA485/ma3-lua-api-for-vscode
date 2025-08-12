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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "NameFilter", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"NameFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRuleNameItem:Get(name, role) end
