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
---@overload fun(index: integer, class: "Sequence", undo: Undo?): Sequence
---@overload fun(index: integer, class: nil, undo: Undo?): Sequence
function Sequences:Create(index, class, undo) end
---@overload fun(class: "Sequence", undo: Undo?, count: integer?): Sequence
---@overload fun(class: nil, undo: Undo?, count: integer?): Sequence
function Sequences:Append(class, undo, count) end
---@overload fun(class: "Sequence", undo: Undo?): Sequence
---@overload fun(class: nil, undo: Undo?): Sequence
function Sequences:Acquire(class, undo) end
---@overload fun(class: "Sequence", undo: Undo?): Sequence
---@overload fun(class: nil, undo: Undo?): Sequence
---@deprecated use "Acquire" instead
function Sequences:Aquire(class, undo) end
---@overload fun(index: integer, class: "Sequence", undo: Undo?, count: integer?): Sequence
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Sequence
function Sequences:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Sequence"): Sequence
---@overload fun(name: string, class: nil): Sequence
function Sequences:Find(name, class) end
---@overload fun(name: string, class: "Sequence"): Sequence
---@overload fun(name: string, class: nil): Object
function Sequences:FindRecursive(name, class) end
