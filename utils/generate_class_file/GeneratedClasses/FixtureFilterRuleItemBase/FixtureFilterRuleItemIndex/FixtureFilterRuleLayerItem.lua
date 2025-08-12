---@meta

---@class FixtureFilterRuleLayerItem: FixtureFilterRuleItemIndex
---@field Layer FixtureLayer
local FixtureFilterRuleLayerItem = {
    Layer="None"
}
---@return "FixtureFilterRuleLayerItem"
function FixtureFilterRuleLayerItem:GetClass() end
---@return "Object"
function FixtureFilterRuleLayerItem:GetChildClass() end
---@return FixtureFilterRuleLayer
function FixtureFilterRuleLayerItem:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Layer", role: nil): FixtureLayer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Layer", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureFilterRuleLayerItem:Get(name, role) end
