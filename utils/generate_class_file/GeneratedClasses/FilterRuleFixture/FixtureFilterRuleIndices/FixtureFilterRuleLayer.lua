---@meta

---@class FixtureFilterRuleLayer: FixtureFilterRuleIndices
local FixtureFilterRuleLayer = {}
---@return "FixtureFilterRuleLayer"
function FixtureFilterRuleLayer:GetClass() end
---@return "FixtureFilterRuleLayerItem"
function FixtureFilterRuleLayer:GetChildClass() end
---@generic T : FixtureFilterRuleLayer
---@param class `T`
---@return boolean
function FixtureFilterRuleLayer:IsClass(class) end
---@param index integer
---@return FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Ptr(index) end
---@return FixtureFilterRuleLayerItem[]
function FixtureFilterRuleLayer:Children() end
---@return FixtureFilterRuleLayerItem?
function FixtureFilterRuleLayer:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Get(name, role) end
---@generic T : FixtureFilterRuleLayerItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Create(index, class, undo) end
---@generic T : FixtureFilterRuleLayerItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Append(class, undo, count) end
---@generic T : FixtureFilterRuleLayerItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Acquire(class, undo) end
---@generic T : FixtureFilterRuleLayerItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleLayerItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleLayer:Aquire(class, undo) end
---@generic T : FixtureFilterRuleLayerItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Insert(index, class, undo, count) end
---@generic T : FixtureFilterRuleLayerItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleLayerItem
function FixtureFilterRuleLayer:Find(class, undo) end
---@overload fun(property_name: "Layer", property_value: FixtureLayer)
---@overload fun(property_name: "Layer", property_value: FixtureLayer)
function FixtureFilterRuleLayer:Layer(property_name, property_value) end