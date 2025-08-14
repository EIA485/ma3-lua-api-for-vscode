---@meta

---@class FixtureFilterRuleFixtureTypeItem: FixtureFilterRuleItemIndex
---@field DMXMode DMXMode
local FixtureFilterRuleFixtureTypeItem = {
    DMXMode="None"
}
---@return "FixtureFilterRuleFixtureTypeItem"
function FixtureFilterRuleFixtureTypeItem:GetClass() end
---@return "Object"
function FixtureFilterRuleFixtureTypeItem:GetChildClass() end
---@return FixtureFilterRuleFixtureType
function FixtureFilterRuleFixtureTypeItem:Parent() end
---@overload fun(name: "DMXMode", role: nil): DMXMode
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DMXMode"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRuleFixtureTypeItem:Get(name, role) end