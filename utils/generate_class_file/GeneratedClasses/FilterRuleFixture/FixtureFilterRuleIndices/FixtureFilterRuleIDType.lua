---@meta

---@class FixtureFilterRuleIDType: FixtureFilterRuleIndices
local FixtureFilterRuleIDType = {}
---@return "FixtureFilterRuleIDType"
function FixtureFilterRuleIDType:GetClass() end
---@return "IdType"
function FixtureFilterRuleIDType:GetChildClass() end
---@generic T : FixtureFilterRuleIDType
---@param class `T`
---@return boolean
function FixtureFilterRuleIDType:IsClass(class) end
---@param index integer
---@return IdType
function FixtureFilterRuleIDType:Ptr(index) end
---@return IdType[]
function FixtureFilterRuleIDType:Children() end
---@return IdType?
function FixtureFilterRuleIDType:CurrentChild() end
---@overload fun(name: integer, role: nil): IdType
function FixtureFilterRuleIDType:Get(name, role) end
---@generic T : IdType
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): IdType
function FixtureFilterRuleIDType:Create(index, class, undo) end
---@generic T : IdType
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): IdType
function FixtureFilterRuleIDType:Append(class, undo, count) end
---@generic T : IdType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IdType
function FixtureFilterRuleIDType:Acquire(class, undo) end
---@generic T : IdType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IdType
---@deprecated use "Acquire" instead
function FixtureFilterRuleIDType:Aquire(class, undo) end
---@generic T : IdType
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IdType
function FixtureFilterRuleIDType:Insert(index, class, undo, count) end
---@generic T : IdType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IdType
function FixtureFilterRuleIDType:Find(class, undo) end
---@overload fun(property_name: "IDType", property_value: integer)
---@overload fun(property_name: "IDType", property_value: integer)
function FixtureFilterRuleIDType:IDType(property_name, property_value) end