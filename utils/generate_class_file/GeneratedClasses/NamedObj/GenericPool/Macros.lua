---@meta

---@class Macros: GenericPool A pool of macros.
local Macros = {}
---@return "Macros"
function Macros:GetClass() end
---@return "Macro"
function Macros:GetChildClass() end
---@return Pool
function Macros:Parent() end
---@param index integer
---@return Macro
function Macros:Ptr(index) end
---@return Macro[]
function Macros:Children() end
---@return Macro?
function Macros:CurrentChild() end
---@overload fun(name: integer, role: nil): Macro
function Macros:Get(name, role) end
---@overload fun(index: integer, class: "Macro", undo: Undo?): Macro
---@overload fun(index: integer, class: nil, undo: Undo?): Macro
function Macros:Create(index, class, undo) end
---@overload fun(class: "Macro", undo: Undo?, count: integer?): Macro
---@overload fun(class: nil, undo: Undo?, count: integer?): Macro
function Macros:Append(class, undo, count) end
---@overload fun(class: "Macro", undo: Undo?): Macro
---@overload fun(class: nil, undo: Undo?): Macro
function Macros:Acquire(class, undo) end
---@overload fun(class: "Macro", undo: Undo?): Macro
---@overload fun(class: nil, undo: Undo?): Macro
---@deprecated use "Acquire" instead
function Macros:Aquire(class, undo) end
---@overload fun(index: integer, class: "Macro", undo: Undo?, count: integer?): Macro
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Macro
function Macros:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Macro"): Macro
---@overload fun(name: string, class: nil): Macro
function Macros:Find(name, class) end
---@overload fun(name: string, class: "Macro"): Macro
---@overload fun(name: string, class: nil): Object
function Macros:FindRecursive(name, class) end
