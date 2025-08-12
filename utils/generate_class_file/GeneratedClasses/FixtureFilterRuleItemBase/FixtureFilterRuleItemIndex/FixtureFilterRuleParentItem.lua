---@meta

---@class FixtureFilterRuleParentItem: FixtureFilterRuleItemIndex
---@field ParentFilter SubFixture
local FixtureFilterRuleParentItem = {}
---@return "FixtureFilterRuleParentItem"
function FixtureFilterRuleParentItem:GetClass() end
---@return "Object"
function FixtureFilterRuleParentItem:GetChildClass() end
---@return FixtureFilterRuleParent
function FixtureFilterRuleParentItem:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ParentFilter", role: nil): SubFixture
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ParentFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRuleParentItem:Get(name, role) end
