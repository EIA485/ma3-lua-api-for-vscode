---@meta

---@class FixtureFilterRuleName: FilterRuleFixture
local FixtureFilterRuleName = {}
---@return "FixtureFilterRuleName"
function FixtureFilterRuleName:GetClass() end
---@return "FixtureFilterRuleNameItem"
function FixtureFilterRuleName:GetChildClass() end
---@generic T : FixtureFilterRuleName
---@param class `T`
---@return boolean
function FixtureFilterRuleName:IsClass(class) end
---@param index integer
---@return FixtureFilterRuleNameItem
function FixtureFilterRuleName:Ptr(index) end
---@return FixtureFilterRuleNameItem[]
function FixtureFilterRuleName:Children() end
---@return FixtureFilterRuleNameItem?
function FixtureFilterRuleName:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Get(name, role) end
---@generic T : FixtureFilterRuleNameItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Create(index, class, undo) end
---@generic T : FixtureFilterRuleNameItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Append(class, undo, count) end
---@generic T : FixtureFilterRuleNameItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Acquire(class, undo) end
---@generic T : FixtureFilterRuleNameItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleNameItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleName:Aquire(class, undo) end
---@generic T : FixtureFilterRuleNameItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Insert(index, class, undo, count) end
---@generic T : FixtureFilterRuleNameItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleNameItem
function FixtureFilterRuleName:Find(class, undo) end
---@overload fun(property_name: "NameFilter", property_value: string)
---@overload fun(property_name: "NameFilter", property_value: string)
function FixtureFilterRuleName:SetChildren(property_name, property_value) end