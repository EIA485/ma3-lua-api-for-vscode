---@meta

---@class FixtureFilterRuleClass: FixtureFilterRuleIndices
local FixtureFilterRuleClass = {}
---@return "FixtureFilterRuleClass"
function FixtureFilterRuleClass:GetClass() end
---@return "FixtureFilterRuleClassItem"
function FixtureFilterRuleClass:GetChildClass() end
---@param index integer
---@return FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Ptr(index) end
---@return FixtureFilterRuleClassItem[]
function FixtureFilterRuleClass:Children() end
---@return FixtureFilterRuleClassItem?
function FixtureFilterRuleClass:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Get(name, role) end
---@overload fun(index: integer, class: "FixtureFilterRuleClassItem", undo: Undo?): FixtureFilterRuleClassItem
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Create(index, class, undo) end
---@overload fun(class: "FixtureFilterRuleClassItem", undo: Undo?, count: integer?): FixtureFilterRuleClassItem
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Append(class, undo, count) end
---@overload fun(class: "FixtureFilterRuleClassItem", undo: Undo?): FixtureFilterRuleClassItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Acquire(class, undo) end
---@overload fun(class: "FixtureFilterRuleClassItem", undo: Undo?): FixtureFilterRuleClassItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleClassItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleClass:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureFilterRuleClassItem", undo: Undo?, count: integer?): FixtureFilterRuleClassItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureFilterRuleClassItem"): FixtureFilterRuleClassItem
---@overload fun(name: string, class: nil): FixtureFilterRuleClassItem
function FixtureFilterRuleClass:Find(name, class) end
---@overload fun(name: string, class: "FixtureFilterRuleClassItem"): FixtureFilterRuleClassItem
---@overload fun(name: string, class: nil): Object
function FixtureFilterRuleClass:FindRecursive(name, class) end
