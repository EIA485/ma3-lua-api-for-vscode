---@meta

---@class FixtureFilterRuleParent: FixtureFilterRuleIndices
local FixtureFilterRuleParent = {}
---@return "FixtureFilterRuleParent"
function FixtureFilterRuleParent:GetClass() end
---@return "FixtureFilterRuleParentItem"
function FixtureFilterRuleParent:GetChildClass() end
---@generic T : FixtureFilterRuleParent
---@param class `T`
---@return boolean
function FixtureFilterRuleParent:IsClass(class) end
---@param index integer
---@return FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Ptr(index) end
---@return FixtureFilterRuleParentItem[]
function FixtureFilterRuleParent:Children() end
---@return FixtureFilterRuleParentItem?
function FixtureFilterRuleParent:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Get(name, role) end
---@generic T : FixtureFilterRuleParentItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Create(index, class, undo) end
---@generic T : FixtureFilterRuleParentItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Append(class, undo, count) end
---@generic T : FixtureFilterRuleParentItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Acquire(class, undo) end
---@generic T : FixtureFilterRuleParentItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleParentItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleParent:Aquire(class, undo) end
---@generic T : FixtureFilterRuleParentItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Insert(index, class, undo, count) end
---@generic T : FixtureFilterRuleParentItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Find(class, undo) end
---@overload fun(property_name: "ParentFilter", property_value: SubFixture)
---@overload fun(property_name: "ParentFilter", property_value: SubFixture)
function FixtureFilterRuleParent:SetChildren(property_name, property_value) end