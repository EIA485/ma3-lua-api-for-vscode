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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Class", role: nil): Class
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Class", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRuleClassItem:Get(name, role) end
