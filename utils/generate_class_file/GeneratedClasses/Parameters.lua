---@meta

---@class Parameters: Object Ask Andrii
local Parameters = {}
---@return "Parameters"
function Parameters:GetClass() end
---@return "Parameter"
function Parameters:GetChildClass() end
---@return RDMFixtureType
function Parameters:Parent() end
---@param index integer
---@return Parameter
function Parameters:Ptr(index) end
---@return Parameter[]
function Parameters:Children() end
---@return Parameter?
function Parameters:CurrentChild() end
---@overload fun(name: integer, role: nil): Parameter
function Parameters:Get(name, role) end
---@generic T : Parameter
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Parameter
function Parameters:Create(index, class, undo) end
---@generic T : Parameter
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Parameter
function Parameters:Append(class, undo, count) end
---@generic T : Parameter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Parameter
function Parameters:Acquire(class, undo) end
---@generic T : Parameter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Parameter
---@deprecated use "Acquire" instead
function Parameters:Aquire(class, undo) end
---@generic T : Parameter
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Parameter
function Parameters:Insert(index, class, undo, count) end
---@generic T : Parameter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Parameter
function Parameters:Find(class, undo) end