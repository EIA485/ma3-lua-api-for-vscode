---@meta

---@class FixtureFilterRules: Object
---@field Not integer
local FixtureFilterRules = {
    Not="No"
}
---@return "FixtureFilterRules"
function FixtureFilterRules:GetClass() end
---@return "FilterRuleFixture"
function FixtureFilterRules:GetChildClass() end
---@return World
function FixtureFilterRules:Parent() end
---@param index integer
---@return FilterRuleFixture
function FixtureFilterRules:Ptr(index) end
---@return FilterRuleFixture[]
function FixtureFilterRules:Children() end
---@return FilterRuleFixture?
function FixtureFilterRules:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Not"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Not"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FilterRuleFixture
function FixtureFilterRules:Get(name, role) end
---@generic T : FilterRuleFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Create(index, class, undo) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FilterRuleFixture
function FixtureFilterRules:Append(class, undo, count) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Acquire(class, undo) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
---@deprecated use "Acquire" instead
function FixtureFilterRules:Aquire(class, undo) end
---@generic T : FilterRuleFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FilterRuleFixture
function FixtureFilterRules:Insert(index, class, undo, count) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Find(class, undo) end