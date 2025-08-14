---@meta

---@class Sequences: GenericPool A pool of sequences.
local Sequences = {}
---@return "Sequences"
function Sequences:GetClass() end
---@return "Sequence"
function Sequences:GetChildClass() end
---@return Pool
function Sequences:Parent() end
---@param index integer
---@return Sequence
function Sequences:Ptr(index) end
---@return Sequence[]
function Sequences:Children() end
---@return Sequence?
function Sequences:CurrentChild() end
---@overload fun(name: integer, role: nil): Sequence
function Sequences:Get(name, role) end
---@generic T : Sequence
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Sequence
function Sequences:Create(index, class, undo) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Sequence
function Sequences:Append(class, undo, count) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sequence
function Sequences:Acquire(class, undo) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sequence
---@deprecated use "Acquire" instead
function Sequences:Aquire(class, undo) end
---@generic T : Sequence
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Sequence
function Sequences:Insert(index, class, undo, count) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sequence
function Sequences:Find(class, undo) end
---@generic T : Sequence|IllegalObject|Cue|Recipe|Part
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Sequences:FindRecursive(name, class) end