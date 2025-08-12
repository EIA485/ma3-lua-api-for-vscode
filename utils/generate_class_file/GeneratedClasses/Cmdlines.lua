---@meta

---@class Cmdlines
local Cmdlines = {}
---@return "Cmdlines"
function Cmdlines:GetClass() end
---@return "Cmdline"
function Cmdlines:GetChildClass() end
---@overload fun(index: integer, class: "Cmdline", undo: Undo?): Cmdline
---@overload fun(index: integer, class: nil, undo: Undo?): Cmdline
function Cmdlines:Create(index, class, undo) end
---@overload fun(class: "Cmdline", undo: Undo?, count: integer?): Cmdline
---@overload fun(class: nil, undo: Undo?, count: integer?): Cmdline
function Cmdlines:Append(class, undo, count) end
---@overload fun(class: "Cmdline", undo: Undo?): Cmdline
---@overload fun(class: nil, undo: Undo?): Cmdline
function Cmdlines:Acquire(class, undo) end
---@overload fun(class: "Cmdline", undo: Undo?): Cmdline
---@overload fun(class: nil, undo: Undo?): Cmdline
---@deprecated use "Acquire" instead
function Cmdlines:Aquire(class, undo) end
---@overload fun(index: integer, class: "Cmdline", undo: Undo?, count: integer?): Cmdline
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Cmdline
function Cmdlines:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Cmdline"): Cmdline
---@overload fun(name: string, class: nil): Cmdline
function Cmdlines:Find(name, class) end
---@overload fun(name: string, class: "Cmdline"): Cmdline
---@overload fun(name: string, class: nil): Object
function Cmdlines:FindRecursive(name, class) end
