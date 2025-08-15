---@meta

---@class GelPools: Object A container for all gels  in the system
local GelPools = {}
---@return "GelPools"
function GelPools:GetClass() end
---@return "GelPool"
function GelPools:GetChildClass() end
---@generic T : GelPools
---@param class `T`
---@return boolean
function GelPools:IsClass(class) end
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
---@generic T : GelPool
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GelPool
function GelPools:Create(index, class, undo) end
---@generic T : GelPool
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GelPool
function GelPools:Append(class, undo, count) end
---@generic T : GelPool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GelPool
function GelPools:Acquire(class, undo) end
---@generic T : GelPool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GelPool
---@deprecated use "Acquire" instead
function GelPools:Aquire(class, undo) end
---@generic T : GelPool
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GelPool
function GelPools:Insert(index, class, undo, count) end
---@generic T : GelPool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GelPool
function GelPools:Find(class, undo) end
---@overload fun(property_name: "Manufacturer", property_value: string)
---@overload fun(property_name: "Manufacturer", property_value: string)
function GelPools:Manufacturer(property_name, property_value) end