---@meta

---@class Attributes: Object A container for attributes.
local Attributes = {}
---@return "Attributes"
function Attributes:GetClass() end
---@return "Attribute"
function Attributes:GetChildClass() end
---@return AttributeDefinitions
function Attributes:Parent() end
---@param index integer
---@return Attribute
function Attributes:Ptr(index) end
---@return Attribute[]
function Attributes:Children() end
---@return Attribute?
function Attributes:CurrentChild() end
---@overload fun(name: integer, role: nil): Attribute
function Attributes:Get(name, role) end
---@generic T : Attribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Attribute
function Attributes:Create(index, class, undo) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Attribute
function Attributes:Append(class, undo, count) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Attribute
function Attributes:Acquire(class, undo) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Attribute
---@deprecated use "Acquire" instead
function Attributes:Aquire(class, undo) end
---@generic T : Attribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Attribute
function Attributes:Insert(index, class, undo, count) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Attribute
function Attributes:Find(class, undo) end