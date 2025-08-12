---@meta

---@class Scribbles: GenericPool
local Scribbles = {}
---@return "Scribbles"
function Scribbles:GetClass() end
---@return "Scribble"
function Scribbles:GetChildClass() end
---@param index integer
---@return Scribble
function Scribbles:Ptr(index) end
---@return Scribble[]
function Scribbles:Children() end
---@return Scribble?
function Scribbles:CurrentChild() end
---@overload fun(name: integer, role: nil): Scribble
function Scribbles:Get(name, role) end
---@overload fun(index: integer, class: "Scribble", undo: Undo?): Scribble
---@overload fun(index: integer, class: nil, undo: Undo?): Scribble
function Scribbles:Create(index, class, undo) end
---@overload fun(class: "Scribble", undo: Undo?, count: integer?): Scribble
---@overload fun(class: nil, undo: Undo?, count: integer?): Scribble
function Scribbles:Append(class, undo, count) end
---@overload fun(class: "Scribble", undo: Undo?): Scribble
---@overload fun(class: nil, undo: Undo?): Scribble
function Scribbles:Acquire(class, undo) end
---@overload fun(class: "Scribble", undo: Undo?): Scribble
---@overload fun(class: nil, undo: Undo?): Scribble
---@deprecated use "Acquire" instead
function Scribbles:Aquire(class, undo) end
---@overload fun(index: integer, class: "Scribble", undo: Undo?, count: integer?): Scribble
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Scribble
function Scribbles:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Scribble"): Scribble
---@overload fun(name: string, class: nil): Scribble
function Scribbles:Find(name, class) end
---@overload fun(name: string, class: "Scribble"): Scribble
---@overload fun(name: string, class: nil): Object
function Scribbles:FindRecursive(name, class) end
