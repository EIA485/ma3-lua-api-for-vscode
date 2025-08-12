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
---@overload fun(index: integer, class: "Stage", undo: Undo?): Stage
---@overload fun(index: integer, class: nil, undo: Undo?): Stage
function Stages:Create(index, class, undo) end
---@overload fun(class: "Stage", undo: Undo?, count: integer?): Stage
---@overload fun(class: nil, undo: Undo?, count: integer?): Stage
function Stages:Append(class, undo, count) end
---@overload fun(class: "Stage", undo: Undo?): Stage
---@overload fun(class: nil, undo: Undo?): Stage
function Stages:Acquire(class, undo) end
---@overload fun(class: "Stage", undo: Undo?): Stage
---@overload fun(class: nil, undo: Undo?): Stage
---@deprecated use "Acquire" instead
function Stages:Aquire(class, undo) end
---@overload fun(index: integer, class: "Stage", undo: Undo?, count: integer?): Stage
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Stage
function Stages:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Stage"): Stage
---@overload fun(name: string, class: nil): Stage
function Stages:Find(name, class) end
---@overload fun(name: string, class: "Stage"): Stage
---@overload fun(name: string, class: nil): Object
function Stages:FindRecursive(name, class) end
