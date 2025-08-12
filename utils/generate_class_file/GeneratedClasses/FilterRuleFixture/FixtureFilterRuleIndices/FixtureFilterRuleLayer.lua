---@meta

---@class FixtureFilterRuleLayer: FixtureFilterRuleIndices
local FixtureFilterRuleLayer = {}
---@return "FixtureFilterRuleLayer"
function FixtureFilterRuleLayer:GetClass() end
---@return "FixtureFilterRuleLayerItem"
function FixtureFilterRuleLayer:GetChildClass() end
---@param index integer
---@return FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Ptr(index) end
---@return FixtureFilterRuleLayerItem[]
function FixtureFilterRuleLayer:Children() end
---@return FixtureFilterRuleLayerItem?
function FixtureFilterRuleLayer:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Get(name, role) end
---@overload fun(index: integer, class: "FixtureFilterRuleLayerItem", undo: Undo?): FixtureFilterRuleLayerItem
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Create(index, class, undo) end
---@overload fun(class: "FixtureFilterRuleLayerItem", undo: Undo?, count: integer?): FixtureFilterRuleLayerItem
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Append(class, undo, count) end
---@overload fun(class: "FixtureFilterRuleLayerItem", undo: Undo?): FixtureFilterRuleLayerItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Acquire(class, undo) end
---@overload fun(class: "FixtureFilterRuleLayerItem", undo: Undo?): FixtureFilterRuleLayerItem
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleLayerItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleLayer:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureFilterRuleLayerItem", undo: Undo?, count: integer?): FixtureFilterRuleLayerItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureFilterRuleLayerItem"): FixtureFilterRuleLayerItem
---@overload fun(name: string, class: nil): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Find(name, class) end
---@overload fun(name: string, class: "FixtureFilterRuleLayerItem"): FixtureFilterRuleLayerItem
---@overload fun(name: string, class: nil): Object
function FixtureFilterRuleLayer:FindRecursive(name, class) end
