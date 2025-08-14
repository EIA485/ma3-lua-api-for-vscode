---@meta

---@class FixtureFilterRuleClassItem: FixtureFilterRuleItemIndex
---@field Class Class
local FixtureFilterRuleClassItem = {
    Class="None"
}
---@return "FixtureFilterRuleClassItem"
function FixtureFilterRuleClassItem:GetClass() end
---@return "Object"
function FixtureFilterRuleClassItem:GetChildClass() end
---@return FixtureFilterRuleClass
function FixtureFilterRuleClassItem:Parent() end
---@overload fun(name: "Class", role: nil): Class
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Class"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRuleClassItem:Get(name, role) end