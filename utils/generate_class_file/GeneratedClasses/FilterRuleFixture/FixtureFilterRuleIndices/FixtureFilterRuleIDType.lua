---@meta

---@class FixtureFilterRuleIDType: FixtureFilterRuleIndices
local FixtureFilterRuleIDType = {}
---@return "FixtureFilterRuleIDType"
function FixtureFilterRuleIDType:GetClass() end
---@return "IdType"
function FixtureFilterRuleIDType:GetChildClass() end
---@param index integer
---@return IdType
function FixtureFilterRuleIDType:Ptr(index) end
---@return IdType[]
function FixtureFilterRuleIDType:Children() end
---@return IdType?
function FixtureFilterRuleIDType:CurrentChild() end
---@overload fun(name: integer, role: nil): IdType
function FixtureFilterRuleIDType:Get(name, role) end
---@overload fun(index: integer, class: "IdType", undo: Undo?): IdType
---@overload fun(index: integer, class: nil, undo: Undo?): IdType
function FixtureFilterRuleIDType:Create(index, class, undo) end
---@overload fun(class: "IdType", undo: Undo?, count: integer?): IdType
---@overload fun(class: nil, undo: Undo?, count: integer?): IdType
function FixtureFilterRuleIDType:Append(class, undo, count) end
---@overload fun(class: "IdType", undo: Undo?): IdType
---@overload fun(class: nil, undo: Undo?): IdType
function FixtureFilterRuleIDType:Acquire(class, undo) end
---@overload fun(class: "IdType", undo: Undo?): IdType
---@overload fun(class: nil, undo: Undo?): IdType
---@deprecated use "Acquire" instead
function FixtureFilterRuleIDType:Aquire(class, undo) end
---@overload fun(index: integer, class: "IdType", undo: Undo?, count: integer?): IdType
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IdType
function FixtureFilterRuleIDType:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "IdType"): IdType
---@overload fun(name: string, class: nil): IdType
function FixtureFilterRuleIDType:Find(name, class) end
---@overload fun(name: string, class: "IdType"): IdType
---@overload fun(name: string, class: nil): Object
function FixtureFilterRuleIDType:FindRecursive(name, class) end
