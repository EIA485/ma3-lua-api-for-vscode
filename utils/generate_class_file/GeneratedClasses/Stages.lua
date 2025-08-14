---@meta

---@class Stages: Object
local Stages = {}
---@return "Stages"
function Stages:GetClass() end
---@return "Stage"
function Stages:GetChildClass() end
---@return Patch
function Stages:Parent() end
---@param index integer
---@return Stage
function Stages:Ptr(index) end
---@return Stage[]
function Stages:Children() end
---@return Stage?
function Stages:CurrentChild() end
---@overload fun(name: integer, role: nil): Stage
function Stages:Get(name, role) end
---@generic T : Stage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Stage
function Stages:Create(index, class, undo) end
---@generic T : Stage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Stage
function Stages:Append(class, undo, count) end
---@generic T : Stage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Stage
function Stages:Acquire(class, undo) end
---@generic T : Stage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Stage
---@deprecated use "Acquire" instead
function Stages:Aquire(class, undo) end
---@generic T : Stage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Stage
function Stages:Insert(index, class, undo, count) end
---@generic T : Stage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Stage
function Stages:Find(class, undo) end