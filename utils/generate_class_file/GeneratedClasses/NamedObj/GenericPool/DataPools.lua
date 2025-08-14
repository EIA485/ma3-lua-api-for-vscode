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
---@generic T : Pool
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Pool
function DataPools:Create(index, class, undo) end
---@generic T : Pool
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Pool
function DataPools:Append(class, undo, count) end
---@generic T : Pool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pool
function DataPools:Acquire(class, undo) end
---@generic T : Pool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pool
---@deprecated use "Acquire" instead
function DataPools:Aquire(class, undo) end
---@generic T : Pool
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Pool
function DataPools:Insert(index, class, undo, count) end
---@generic T : Pool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Pool
function DataPools:Find(class, undo) end