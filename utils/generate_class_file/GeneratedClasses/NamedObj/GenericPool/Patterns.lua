---@meta

---@class Patterns: GenericPool
local Patterns = {}
---@return "Patterns"
function Patterns:GetClass() end
---@return "Pattern"
function Patterns:GetChildClass() end
---@return GeneratorTypes
function Patterns:Parent() end
---@param index integer
---@return Pattern
function Patterns:Ptr(index) end
---@return Pattern[]
function Patterns:Children() end
---@return Pattern?
function Patterns:CurrentChild() end
---@overload fun(name: integer, role: nil): Pattern
function Patterns:Get(name, role) end
---@overload fun(index: integer, class: "Pattern", undo: Undo?): Pattern
---@overload fun(index: integer, class: nil, undo: Undo?): Pattern
function Patterns:Create(index, class, undo) end
---@overload fun(class: "Pattern", undo: Undo?, count: integer?): Pattern
---@overload fun(class: nil, undo: Undo?, count: integer?): Pattern
function Patterns:Append(class, undo, count) end
---@overload fun(class: "Pattern", undo: Undo?): Pattern
---@overload fun(class: nil, undo: Undo?): Pattern
function Patterns:Acquire(class, undo) end
---@overload fun(class: "Pattern", undo: Undo?): Pattern
---@overload fun(class: nil, undo: Undo?): Pattern
---@deprecated use "Acquire" instead
function Patterns:Aquire(class, undo) end
---@overload fun(index: integer, class: "Pattern", undo: Undo?, count: integer?): Pattern
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Pattern
function Patterns:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Pattern"): Pattern
---@overload fun(name: string, class: nil): Pattern
function Patterns:Find(name, class) end
---@overload fun(name: string, class: "Pattern"): Pattern
---@overload fun(name: string, class: nil): Object
function Patterns:FindRecursive(name, class) end
