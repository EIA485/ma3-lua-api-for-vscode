---@meta

---@class Spaces: Object
local Spaces = {}
---@return "Spaces"
function Spaces:GetClass() end
---@return "Space"
function Spaces:GetChildClass() end
---@return Stage
function Spaces:Parent() end
---@param index integer
---@return Space
function Spaces:Ptr(index) end
---@return Space[]
function Spaces:Children() end
---@return Space?
function Spaces:CurrentChild() end
---@overload fun(name: integer, role: nil): Space
function Spaces:Get(name, role) end
---@overload fun(index: integer, class: "Space", undo: Undo?): Space
---@overload fun(index: integer, class: nil, undo: Undo?): Space
function Spaces:Create(index, class, undo) end
---@overload fun(class: "Space", undo: Undo?, count: integer?): Space
---@overload fun(class: nil, undo: Undo?, count: integer?): Space
function Spaces:Append(class, undo, count) end
---@overload fun(class: "Space", undo: Undo?): Space
---@overload fun(class: nil, undo: Undo?): Space
function Spaces:Acquire(class, undo) end
---@overload fun(class: "Space", undo: Undo?): Space
---@overload fun(class: nil, undo: Undo?): Space
---@deprecated use "Acquire" instead
function Spaces:Aquire(class, undo) end
---@overload fun(index: integer, class: "Space", undo: Undo?, count: integer?): Space
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Space
function Spaces:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Space"): Space
---@overload fun(name: string, class: nil): Space
function Spaces:Find(name, class) end
---@overload fun(name: string, class: "Space"): Space
---@overload fun(name: string, class: nil): Object
function Spaces:FindRecursive(name, class) end
