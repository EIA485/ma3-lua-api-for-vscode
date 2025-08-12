---@meta

---@class FixtureFilterRuleIndices: FilterRuleFixture
local FixtureFilterRuleIndices = {}
---@return "FixtureFilterRuleIndices"
function FixtureFilterRuleIndices:GetClass() end
---@return "FixtureFilterRuleItemIndex"
function FixtureFilterRuleIndices:GetChildClass() end
---@param index integer
---@return FixtureFilterRuleItemIndex
function FixtureFilterRuleIndices:Ptr(index) end
---@return FixtureFilterRuleItemIndex[]
function FixtureFilterRuleIndices:Children() end
---@return FixtureFilterRuleItemIndex?
function FixtureFilterRuleIndices:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleItemIndex
function FixtureFilterRuleIndices:Get(name, role) end
---@overload fun(index: integer, class: "FixtureFilterRuleItemIndex", undo: Undo?): FixtureFilterRuleItemIndex
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleItemIndex
function FixtureFilterRuleIndices:Create(index, class, undo) end
---@overload fun(class: "FixtureFilterRuleItemIndex", undo: Undo?, count: integer?): FixtureFilterRuleItemIndex
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleItemIndex
function FixtureFilterRuleIndices:Append(class, undo, count) end
---@overload fun(class: "FixtureFilterRuleItemIndex", undo: Undo?): FixtureFilterRuleItemIndex
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleItemIndex
function FixtureFilterRuleIndices:Acquire(class, undo) end
---@overload fun(class: "FixtureFilterRuleItemIndex", undo: Undo?): FixtureFilterRuleItemIndex
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleItemIndex
---@deprecated use "Acquire" instead
function FixtureFilterRuleIndices:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureFilterRuleItemIndex", undo: Undo?, count: integer?): FixtureFilterRuleItemIndex
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleItemIndex
function FixtureFilterRuleIndices:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureFilterRuleItemIndex"): FixtureFilterRuleItemIndex
---@overload fun(name: string, class: nil): FixtureFilterRuleItemIndex
function FixtureFilterRuleIndices:Find(name, class) end
---@overload fun(name: string, class: "FixtureFilterRuleItemIndex"): FixtureFilterRuleItemIndex
---@overload fun(name: string, class: nil): Object
function FixtureFilterRuleIndices:FindRecursive(name, class) end
