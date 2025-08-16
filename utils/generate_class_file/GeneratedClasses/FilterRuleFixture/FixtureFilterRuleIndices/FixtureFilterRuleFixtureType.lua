---@meta

---@class FixtureFilterRuleFixtureType: FixtureFilterRuleIndices
local FixtureFilterRuleFixtureType = {}
---@return "FixtureFilterRuleFixtureType"
function FixtureFilterRuleFixtureType:GetClass() end
---@return "FixtureFilterRuleFixtureTypeItem"
function FixtureFilterRuleFixtureType:GetChildClass() end
---@generic T : FixtureFilterRuleFixtureType
---@param class `T`
---@return boolean
function FixtureFilterRuleFixtureType:IsClass(class) end
---@param index integer
---@return FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Ptr(index) end
---@return FixtureFilterRuleFixtureTypeItem[]
function FixtureFilterRuleFixtureType:Children() end
---@return FixtureFilterRuleFixtureTypeItem?
function FixtureFilterRuleFixtureType:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Get(name, role) end
---@generic T : FixtureFilterRuleFixtureTypeItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Create(index, class, undo) end
---@generic T : FixtureFilterRuleFixtureTypeItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Append(class, undo, count) end
---@generic T : FixtureFilterRuleFixtureTypeItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Acquire(class, undo) end
---@generic T : FixtureFilterRuleFixtureTypeItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleFixtureTypeItem
---@deprecated use "Acquire" instead
function FixtureFilterRuleFixtureType:Aquire(class, undo) end
---@generic T : FixtureFilterRuleFixtureTypeItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Insert(index, class, undo, count) end
---@generic T : FixtureFilterRuleFixtureTypeItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureFilterRuleFixtureTypeItem
function FixtureFilterRuleFixtureType:Find(class, undo) end
---@overload fun(property_name: "DMXMode", property_value: DMXMode)
---@overload fun(property_name: "DMXMode", property_value: DMXMode)
function FixtureFilterRuleFixtureType:SetChildren(property_name, property_value) end