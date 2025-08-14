---@meta

---@class Generators: GenericPool
local Generators = {}
---@return "Generators"
function Generators:GetClass() end
---@return "Random"
function Generators:GetChildClass() end
---@return GeneratorTypes
function Generators:Parent() end
---@param index integer
---@return Random
function Generators:Ptr(index) end
---@return Random[]
function Generators:Children() end
---@return Random?
function Generators:CurrentChild() end
---@overload fun(name: integer, role: nil): Random
function Generators:Get(name, role) end
---@generic T : Random
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Random
function Generators:Create(index, class, undo) end
---@generic T : Random
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Random
function Generators:Append(class, undo, count) end
---@generic T : Random
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Random
function Generators:Acquire(class, undo) end
---@generic T : Random
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Random
---@deprecated use "Acquire" instead
function Generators:Aquire(class, undo) end
---@generic T : Random
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Random
function Generators:Insert(index, class, undo, count) end
---@generic T : Random
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Random
function Generators:Find(class, undo) end