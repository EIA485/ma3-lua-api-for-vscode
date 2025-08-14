---@meta

---@class Relations: Object Container for all relations inside a DMX mode of a fixture type.
local Relations = {}
---@return "Relations"
function Relations:GetClass() end
---@return "Relation"
function Relations:GetChildClass() end
---@return DMXMode
function Relations:Parent() end
---@param index integer
---@return Relation
function Relations:Ptr(index) end
---@return Relation[]
function Relations:Children() end
---@return Relation?
function Relations:CurrentChild() end
---@overload fun(name: integer, role: nil): Relation
function Relations:Get(name, role) end
---@generic T : Relation
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Relation
function Relations:Create(index, class, undo) end
---@generic T : Relation
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Relation
function Relations:Append(class, undo, count) end
---@generic T : Relation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Relation
function Relations:Acquire(class, undo) end
---@generic T : Relation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Relation
---@deprecated use "Acquire" instead
function Relations:Aquire(class, undo) end
---@generic T : Relation
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Relation
function Relations:Insert(index, class, undo, count) end
---@generic T : Relation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Relation
function Relations:Find(class, undo) end