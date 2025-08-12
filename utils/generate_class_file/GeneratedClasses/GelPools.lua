---@meta

---@class GelPools: Object A container for all gels  in the system
local GelPools = {}
---@return "GelPools"
function GelPools:GetClass() end
---@return "GelPool"
function GelPools:GetChildClass() end
---@return ShowData
function GelPools:Parent() end
---@param index integer
---@return GelPool
function GelPools:Ptr(index) end
---@return GelPool[]
function GelPools:Children() end
---@return GelPool?
function GelPools:CurrentChild() end
---@overload fun(name: integer, role: nil): GelPool
function GelPools:Get(name, role) end
---@overload fun(index: integer, class: "GelPool", undo: Undo?): GelPool
---@overload fun(index: integer, class: nil, undo: Undo?): GelPool
function GelPools:Create(index, class, undo) end
---@overload fun(class: "GelPool", undo: Undo?, count: integer?): GelPool
---@overload fun(class: nil, undo: Undo?, count: integer?): GelPool
function GelPools:Append(class, undo, count) end
---@overload fun(class: "GelPool", undo: Undo?): GelPool
---@overload fun(class: nil, undo: Undo?): GelPool
function GelPools:Acquire(class, undo) end
---@overload fun(class: "GelPool", undo: Undo?): GelPool
---@overload fun(class: nil, undo: Undo?): GelPool
---@deprecated use "Acquire" instead
function GelPools:Aquire(class, undo) end
---@overload fun(index: integer, class: "GelPool", undo: Undo?, count: integer?): GelPool
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GelPool
function GelPools:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GelPool"): GelPool
---@overload fun(name: string, class: nil): GelPool
function GelPools:Find(name, class) end
---@overload fun(name: string, class: "GelPool"): GelPool
---@overload fun(name: string, class: nil): Object
function GelPools:FindRecursive(name, class) end
