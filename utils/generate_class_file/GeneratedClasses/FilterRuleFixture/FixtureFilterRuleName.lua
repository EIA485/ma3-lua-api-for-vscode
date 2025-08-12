---@meta

---@class FixtureFilterRuleName: FilterRuleFixture
local FixtureFilterRuleName = {}
---@return "FixtureFilterRuleName"
function FixtureFilterRuleName:GetClass() end
---@return "FixtureFilterRuleNameItem"
function FixtureFilterRuleName:GetChildClass() end
---@param index integer
---@return FixtureFilterRuleNameItem
function FixtureFilterRuleName:Ptr(index) end
---@return FixtureFilterRuleNameItem[]
function FixtureFilterRuleName:Children() end
---@return FixtureFilterRuleNameItem?
function FixtureFilterRuleName:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Get(name, role) end
---@overload fun(index: integer, class: "FixtureFilterRuleNameItem", undo: Undo?): FixtureFilterRuleNameItem
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Create(index, class, undo) end
---@overload fun(class: "FixtureFilterRuleNameItem", undo: Undo?, count: integer?): FixtureFilterRuleNameItem
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Append(class, undo, count) end
---@overload fun(class: "FixtureFilterRuleNameItem", undo: Undo?): FixtureFilterRuleNameItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Acquire(class, undo) end
---@overload fun(class: "FixtureFilterRuleNameItem", undo: Undo?): FixtureFilterRuleNameItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleNameItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleName:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureFilterRuleNameItem", undo: Undo?, count: integer?): FixtureFilterRuleNameItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureFilterRuleNameItem"): FixtureFilterRuleNameItem
---@overload fun(name: string, class: nil): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Find(name, class) end
---@overload fun(name: string, class: "FixtureFilterRuleNameItem"): FixtureFilterRuleNameItem
---@overload fun(name: string, class: nil): Object
function FixtureFilterRuleName:FindRecursive(name, class) end
