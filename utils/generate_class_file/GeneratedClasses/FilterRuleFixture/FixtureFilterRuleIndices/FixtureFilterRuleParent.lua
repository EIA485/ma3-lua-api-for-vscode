---@meta

---@class FixtureFilterRuleParent: FixtureFilterRuleIndices
local FixtureFilterRuleParent = {}
---@return "FixtureFilterRuleParent"
function FixtureFilterRuleParent:GetClass() end
---@return "FixtureFilterRuleParentItem"
function FixtureFilterRuleParent:GetChildClass() end
---@param index integer
---@return FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Ptr(index) end
---@return FixtureFilterRuleParentItem[]
function FixtureFilterRuleParent:Children() end
---@return FixtureFilterRuleParentItem?
function FixtureFilterRuleParent:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Get(name, role) end
---@overload fun(index: integer, class: "FixtureFilterRuleParentItem", undo: Undo?): FixtureFilterRuleParentItem
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Create(index, class, undo) end
---@overload fun(class: "FixtureFilterRuleParentItem", undo: Undo?, count: integer?): FixtureFilterRuleParentItem
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Append(class, undo, count) end
---@overload fun(class: "FixtureFilterRuleParentItem", undo: Undo?): FixtureFilterRuleParentItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Acquire(class, undo) end
---@overload fun(class: "FixtureFilterRuleParentItem", undo: Undo?): FixtureFilterRuleParentItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleParentItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleParent:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureFilterRuleParentItem", undo: Undo?, count: integer?): FixtureFilterRuleParentItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureFilterRuleParentItem"): FixtureFilterRuleParentItem
---@overload fun(name: string, class: nil): FixtureFilterRuleParentItem
function FixtureFilterRuleParent:Find(name, class) end
---@overload fun(name: string, class: "FixtureFilterRuleParentItem"): FixtureFilterRuleParentItem
---@overload fun(name: string, class: nil): Object
function FixtureFilterRuleParent:FindRecursive(name, class) end
