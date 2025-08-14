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
---@generic T : Space
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Space
function Spaces:Create(index, class, undo) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Space
function Spaces:Append(class, undo, count) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Space
function Spaces:Acquire(class, undo) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Space
---@deprecated use "Acquire" instead
function Spaces:Aquire(class, undo) end
---@generic T : Space
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Space
function Spaces:Insert(index, class, undo, count) end
---@generic T : Space
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Space
function Spaces:Find(class, undo) end
---@generic T : Space|IllegalObject|StageElement
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Spaces:FindRecursive(name, class) end