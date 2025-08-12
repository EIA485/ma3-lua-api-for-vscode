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
---@overload fun(index: integer, class: "Random", undo: Undo?): Random
---@overload fun(index: integer, class: nil, undo: Undo?): Random
function Generators:Create(index, class, undo) end
---@overload fun(class: "Random", undo: Undo?, count: integer?): Random
---@overload fun(class: nil, undo: Undo?, count: integer?): Random
function Generators:Append(class, undo, count) end
---@overload fun(class: "Random", undo: Undo?): Random
---@overload fun(class: nil, undo: Undo?): Random
function Generators:Acquire(class, undo) end
---@overload fun(class: "Random", undo: Undo?): Random
---@overload fun(class: nil, undo: Undo?): Random
---@deprecated use "Acquire" instead
function Generators:Aquire(class, undo) end
---@overload fun(index: integer, class: "Random", undo: Undo?, count: integer?): Random
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Random
function Generators:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Random"): Random
---@overload fun(name: string, class: nil): Random
function Generators:Find(name, class) end
---@overload fun(name: string, class: "Random"): Random
---@overload fun(name: string, class: nil): Object
function Generators:FindRecursive(name, class) end
