---@meta

---@class FixtureFilterRuleClass: FixtureFilterRuleIndices
local FixtureFilterRuleClass = {}
---@return "FixtureFilterRuleClass"
function FixtureFilterRuleClass:GetClass() end
---@return "FixtureFilterRuleClassItem"
function FixtureFilterRuleClass:GetChildClass() end
---@generic T : FixtureFilterRuleClass
---@param class `T`
---@return boolean
function FixtureFilterRuleClass:IsClass(class) end
---@param index integer
---@return FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Ptr(index) end
---@return FixtureFilterRuleClassItem[]
function FixtureFilterRuleClass:Children() end
---@return FixtureFilterRuleClassItem?
function FixtureFilterRuleClass:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Get(name, role) end
---@generic T : FixtureFilterRuleClassItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Create(index, class, undo) end
---@generic T : FixtureFilterRuleClassItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Append(class, undo, count) end
---@generic T : FixtureFilterRuleClassItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Acquire(class, undo) end
---@generic T : FixtureFilterRuleClassItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleClassItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleClass:Aquire(class, undo) end
---@generic T : FixtureFilterRuleClassItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Insert(index, class, undo, count) end
---@generic T : FixtureFilterRuleClassItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Find(class, undo) end
---@overload fun(property_name: "Class", property_value: Class)
---@overload fun(property_name: "Class", property_value: Class)
function FixtureFilterRuleClass:SetChildren(property_name, property_value) end