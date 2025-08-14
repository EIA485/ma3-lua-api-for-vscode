---@meta

---@class Masters: Object Contains all master pools.
local Masters = {}
---@return "Masters"
function Masters:GetClass() end
---@return "MasterPool"
function Masters:GetChildClass() end
---@return ShowData
function Masters:Parent() end
---@param index integer
---@return MasterPool
function Masters:Ptr(index) end
---@return MasterPool[]
function Masters:Children() end
---@return MasterPool?
function Masters:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterPool
function Masters:Get(name, role) end
---@generic T : MasterPool
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MasterPool
function Masters:Create(index, class, undo) end
---@generic T : MasterPool
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterPool
function Masters:Append(class, undo, count) end
---@generic T : MasterPool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterPool
function Masters:Acquire(class, undo) end
---@generic T : MasterPool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterPool
---@deprecated use "Acquire" instead
function Masters:Aquire(class, undo) end
---@generic T : MasterPool
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterPool
function Masters:Insert(index, class, undo, count) end
---@generic T : MasterPool
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterPool
function Masters:Find(class, undo) end