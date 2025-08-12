---@meta

---@class DataPools: GenericPool
local DataPools = {}
---@return "DataPools"
function DataPools:GetClass() end
---@return "Pool"
function DataPools:GetChildClass() end
---@return ShowData
function DataPools:Parent() end
---@param index integer
---@return Pool
function DataPools:Ptr(index) end
---@return Pool[]
function DataPools:Children() end
---@return Pool?
function DataPools:CurrentChild() end
---@overload fun(name: integer, role: nil): Pool
function DataPools:Get(name, role) end
---@overload fun(index: integer, class: "Pool", undo: Undo?): Pool
---@overload fun(index: integer, class: nil, undo: Undo?): Pool
function DataPools:Create(index, class, undo) end
---@overload fun(class: "Pool", undo: Undo?, count: integer?): Pool
---@overload fun(class: nil, undo: Undo?, count: integer?): Pool
function DataPools:Append(class, undo, count) end
---@overload fun(class: "Pool", undo: Undo?): Pool
---@overload fun(class: nil, undo: Undo?): Pool
function DataPools:Acquire(class, undo) end
---@overload fun(class: "Pool", undo: Undo?): Pool
---@overload fun(class: nil, undo: Undo?): Pool
---@deprecated use "Acquire" instead
function DataPools:Aquire(class, undo) end
---@overload fun(index: integer, class: "Pool", undo: Undo?, count: integer?): Pool
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Pool
function DataPools:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Pool"): Pool
---@overload fun(name: string, class: nil): Pool
function DataPools:Find(name, class) end
---@overload fun(name: string, class: "Pool"): Pool
---@overload fun(name: string, class: nil): Object
function DataPools:FindRecursive(name, class) end
