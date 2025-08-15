---@meta

---@class Filters: GenericPool
local Filters = {}
---@return "Filters"
function Filters:GetClass() end
---@return "Filter"
function Filters:GetChildClass() end
---@generic T : Filters
---@param class `T`
---@return boolean
function Filters:IsClass(class) end
---@return Pool
function Filters:Parent() end
---@param index integer
---@return Filter
function Filters:Ptr(index) end
---@return Filter[]
function Filters:Children() end
---@return Filter?
function Filters:CurrentChild() end
---@overload fun(name: integer, role: nil): Filter
function Filters:Get(name, role) end
---@generic T : Filter
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Filter
function Filters:Create(index, class, undo) end
---@generic T : Filter
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Filter
function Filters:Append(class, undo, count) end
---@generic T : Filter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Filter
function Filters:Acquire(class, undo) end
---@generic T : Filter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Filter
---@deprecated use "Acquire" instead
function Filters:Aquire(class, undo) end
---@generic T : Filter
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Filter
function Filters:Insert(index, class, undo, count) end
---@generic T : Filter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Filter
function Filters:Find(class, undo) end
---@overload fun(property_name: "Relative"|"Timing"|"Absolute"|"Phaser", property_value: YesNo|boolean)
function Filters:Key(property_name, property_value) end