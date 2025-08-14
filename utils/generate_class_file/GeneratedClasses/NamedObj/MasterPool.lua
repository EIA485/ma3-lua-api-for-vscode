---@meta

---@class MasterPool: NamedObj A container for masters of one kind.
local MasterPool = {}
---@return "MasterPool"
function MasterPool:GetClass() end
---@return "Master"
function MasterPool:GetChildClass() end
---@return Masters
function MasterPool:Parent() end
---@param index integer
---@return Master
function MasterPool:Ptr(index) end
---@return Master[]
function MasterPool:Children() end
---@return Master?
function MasterPool:CurrentChild() end
---@overload fun(name: integer, role: nil): Master
function MasterPool:Get(name, role) end
---@generic T : Master
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Master
function MasterPool:Create(index, class, undo) end
---@generic T : Master
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Master
function MasterPool:Append(class, undo, count) end
---@generic T : Master
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Master
function MasterPool:Acquire(class, undo) end
---@generic T : Master
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Master
---@deprecated use "Acquire" instead
function MasterPool:Aquire(class, undo) end
---@generic T : Master
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Master
function MasterPool:Insert(index, class, undo, count) end
---@generic T : Master
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Master
function MasterPool:Find(class, undo) end