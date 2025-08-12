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
---@overload fun(index: integer, class: "Attribute", undo: Undo?): Attribute
---@overload fun(index: integer, class: nil, undo: Undo?): Attribute
function Attributes:Create(index, class, undo) end
---@overload fun(class: "Attribute", undo: Undo?, count: integer?): Attribute
---@overload fun(class: nil, undo: Undo?, count: integer?): Attribute
function Attributes:Append(class, undo, count) end
---@overload fun(class: "Attribute", undo: Undo?): Attribute
---@overload fun(class: nil, undo: Undo?): Attribute
function Attributes:Acquire(class, undo) end
---@overload fun(class: "Attribute", undo: Undo?): Attribute
---@overload fun(class: nil, undo: Undo?): Attribute
---@deprecated use "Acquire" instead
function Attributes:Aquire(class, undo) end
---@overload fun(index: integer, class: "Attribute", undo: Undo?, count: integer?): Attribute
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Attribute
function Attributes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Attribute"): Attribute
---@overload fun(name: string, class: nil): Attribute
function Attributes:Find(name, class) end
---@overload fun(name: string, class: "Attribute"): Attribute
---@overload fun(name: string, class: nil): Object
function Attributes:FindRecursive(name, class) end
