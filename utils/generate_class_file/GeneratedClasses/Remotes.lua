---@meta

---@class Remotes: Object
local Remotes = {}
---@return "Remotes"
function Remotes:GetClass() end
---@return "RemoteCollect"
function Remotes:GetChildClass() end
---@return ShowData
function Remotes:Parent() end
---@param index integer
---@return RemoteCollect
function Remotes:Ptr(index) end
---@return RemoteCollect[]
function Remotes:Children() end
---@return RemoteCollect?
function Remotes:CurrentChild() end
---@overload fun(name: integer, role: nil): RemoteCollect
function Remotes:Get(name, role) end
---@generic T : RemoteCollect
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RemoteCollect
function Remotes:Create(index, class, undo) end
---@generic T : RemoteCollect
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RemoteCollect
function Remotes:Append(class, undo, count) end
---@generic T : RemoteCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RemoteCollect
function Remotes:Acquire(class, undo) end
---@generic T : RemoteCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RemoteCollect
---@deprecated use "Acquire" instead
function Remotes:Aquire(class, undo) end
---@generic T : RemoteCollect
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RemoteCollect
function Remotes:Insert(index, class, undo, count) end
---@generic T : RemoteCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RemoteCollect
function Remotes:Find(class, undo) end