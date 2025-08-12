---@meta

---@class Filters: GenericPool
local Filters = {}
---@return "Filters"
function Filters:GetClass() end
---@return "Filter"
function Filters:GetChildClass() end
---@return Pool
function Filters:Parent() end
---@param index integer
---@return Filter
function Filters:Ptr(index) end
---@return Filter[]
function Filters:Children() end
---@return Filter?
function Filters:CurrentChild() end
---@overload fun(name: integer, role: nil): Filter
function Filters:Get(name, role) end
---@overload fun(index: integer, class: "Filter", undo: Undo?): Filter
---@overload fun(index: integer, class: nil, undo: Undo?): Filter
function Filters:Create(index, class, undo) end
---@overload fun(class: "Filter", undo: Undo?, count: integer?): Filter
---@overload fun(class: nil, undo: Undo?, count: integer?): Filter
function Filters:Append(class, undo, count) end
---@overload fun(class: "Filter", undo: Undo?): Filter
---@overload fun(class: nil, undo: Undo?): Filter
function Filters:Acquire(class, undo) end
---@overload fun(class: "Filter", undo: Undo?): Filter
---@overload fun(class: nil, undo: Undo?): Filter
---@deprecated use "Acquire" instead
function Filters:Aquire(class, undo) end
---@overload fun(index: integer, class: "Filter", undo: Undo?, count: integer?): Filter
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Filter
function Filters:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Filter"): Filter
---@overload fun(name: string, class: nil): Filter
function Filters:Find(name, class) end
---@overload fun(name: string, class: "Filter"): Filter
---@overload fun(name: string, class: nil): Object
function Filters:FindRecursive(name, class) end
