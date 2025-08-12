---@meta

---@class FixtureFilterRuleFixtureType: FixtureFilterRuleIndices
local FixtureFilterRuleFixtureType = {}
---@return "FixtureFilterRuleFixtureType"
function FixtureFilterRuleFixtureType:GetClass() end
---@return "FixtureFilterRuleFixtureTypeItem"
function FixtureFilterRuleFixtureType:GetChildClass() end
---@param index integer
---@return FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Ptr(index) end
---@return FixtureFilterRuleFixtureTypeItem[]
function FixtureFilterRuleFixtureType:Children() end
---@return FixtureFilterRuleFixtureTypeItem?
function FixtureFilterRuleFixtureType:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Get(name, role) end
---@overload fun(index: integer, class: "FixtureFilterRuleFixtureTypeItem", undo: Undo?): FixtureFilterRuleFixtureTypeItem
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Create(index, class, undo) end
---@overload fun(class: "FixtureFilterRuleFixtureTypeItem", undo: Undo?, count: integer?): FixtureFilterRuleFixtureTypeItem
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Append(class, undo, count) end
---@overload fun(class: "FixtureFilterRuleFixtureTypeItem", undo: Undo?): FixtureFilterRuleFixtureTypeItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Acquire(class, undo) end
---@overload fun(class: "FixtureFilterRuleFixtureTypeItem", undo: Undo?): FixtureFilterRuleFixtureTypeItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleFixtureTypeItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleFixtureType:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureFilterRuleFixtureTypeItem", undo: Undo?, count: integer?): FixtureFilterRuleFixtureTypeItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureFilterRuleFixtureTypeItem"): FixtureFilterRuleFixtureTypeItem
---@overload fun(name: string, class: nil): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Find(name, class) end
---@overload fun(name: string, class: "FixtureFilterRuleFixtureTypeItem"): FixtureFilterRuleFixtureTypeItem
---@overload fun(name: string, class: nil): Object
function FixtureFilterRuleFixtureType:FindRecursive(name, class) end
