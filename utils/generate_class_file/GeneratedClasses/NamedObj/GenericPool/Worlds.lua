---@meta

---@class Worlds: GenericPool A container for worlds.
local Worlds = {}
---@return "Worlds"
function Worlds:GetClass() end
---@return "World"
function Worlds:GetChildClass() end
---@return Pool
function Worlds:Parent() end
---@param index integer
---@return World
function Worlds:Ptr(index) end
---@return World[]
function Worlds:Children() end
---@return World?
function Worlds:CurrentChild() end
---@overload fun(name: integer, role: nil): World
function Worlds:Get(name, role) end
---@overload fun(index: integer, class: "World", undo: Undo?): World
---@overload fun(index: integer, class: nil, undo: Undo?): World
function Worlds:Create(index, class, undo) end
---@overload fun(class: "World", undo: Undo?, count: integer?): World
---@overload fun(class: nil, undo: Undo?, count: integer?): World
function Worlds:Append(class, undo, count) end
---@overload fun(class: "World", undo: Undo?): World
---@overload fun(class: nil, undo: Undo?): World
function Worlds:Acquire(class, undo) end
---@overload fun(class: "World", undo: Undo?): World
---@overload fun(class: nil, undo: Undo?): World
---@deprecated use "Acquire" instead
function Worlds:Aquire(class, undo) end
---@overload fun(index: integer, class: "World", undo: Undo?, count: integer?): World
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): World
function Worlds:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "World"): World
---@overload fun(name: string, class: nil): World
function Worlds:Find(name, class) end
---@overload fun(name: string, class: "World"): World
---@overload fun(name: string, class: nil): Object
function Worlds:FindRecursive(name, class) end
