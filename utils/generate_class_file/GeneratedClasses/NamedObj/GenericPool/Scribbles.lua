---@meta

---@class Scribbles: GenericPool
local Scribbles = {}
---@return "Scribbles"
function Scribbles:GetClass() end
---@return "Scribble"
function Scribbles:GetChildClass() end
---@generic T : Scribbles
---@param class `T`
---@return boolean
function Scribbles:IsClass(class) end
---@param index integer
---@return Scribble
function Scribbles:Ptr(index) end
---@return Scribble[]
function Scribbles:Children() end
---@return Scribble?
function Scribbles:CurrentChild() end
---@overload fun(name: integer, role: nil): Scribble
function Scribbles:Get(name, role) end
---@generic T : Scribble
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Scribble
function Scribbles:Create(index, class, undo) end
---@generic T : Scribble
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Scribble
function Scribbles:Append(class, undo, count) end
---@generic T : Scribble
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Scribble
function Scribbles:Acquire(class, undo) end
---@generic T : Scribble
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Scribble
---@deprecated use "Acquire" instead
function Scribbles:Aquire(class, undo) end
---@generic T : Scribble
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Scribble
function Scribbles:Insert(index, class, undo, count) end
---@generic T : Scribble
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Scribble
function Scribbles:Find(class, undo) end
---@overload fun(property_name: "Scribble", property_value: CurveSegment[])
---@overload fun(property_name: "Scribble", property_value: CurveSegment[])
function Scribbles:SetChildren(property_name, property_value) end