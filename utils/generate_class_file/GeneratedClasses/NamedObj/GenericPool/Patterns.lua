---@meta

---@class Patterns: GenericPool
local Patterns = {}
---@return "Patterns"
function Patterns:GetClass() end
---@return "Pattern"
function Patterns:GetChildClass() end
---@generic T : Patterns
---@param class `T`
---@return boolean
function Patterns:IsClass(class) end
---@return GeneratorTypes
function Patterns:Parent() end
---@param index integer
---@return Pattern
function Patterns:Ptr(index) end
---@return Pattern[]
function Patterns:Children() end
---@return Pattern?
function Patterns:CurrentChild() end
---@overload fun(name: integer, role: nil): Pattern
function Patterns:Get(name, role) end
---@generic T : Pattern
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Pattern
function Patterns:Create(index, class, undo) end
---@generic T : Pattern
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Pattern
function Patterns:Append(class, undo, count) end
---@generic T : Pattern
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pattern
function Patterns:Acquire(class, undo) end
---@generic T : Pattern
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pattern
---@deprecated use "Acquire" instead
function Patterns:Aquire(class, undo) end
---@generic T : Pattern
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Pattern
function Patterns:Insert(index, class, undo, count) end
---@generic T : Pattern
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pattern
function Patterns:Find(class, undo) end
function Patterns:SetChildren(property_name, property_value) end