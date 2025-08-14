---@meta

---@class DmxRemotes: RemoteCollect
local DmxRemotes = {}
---@return "DmxRemotes"
function DmxRemotes:GetClass() end
---@return "DmxRemote"
function DmxRemotes:GetChildClass() end
---@param index integer
---@return DmxRemote
function DmxRemotes:Ptr(index) end
---@return DmxRemote[]
function DmxRemotes:Children() end
---@return DmxRemote?
function DmxRemotes:CurrentChild() end
---@overload fun(name: integer, role: nil): DmxRemote
function DmxRemotes:Get(name, role) end
---@generic T : DmxRemote
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DmxRemote
function DmxRemotes:Create(index, class, undo) end
---@generic T : DmxRemote
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxRemote
function DmxRemotes:Append(class, undo, count) end
---@generic T : DmxRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxRemote
function DmxRemotes:Acquire(class, undo) end
---@generic T : DmxRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxRemote
---@deprecated use "Acquire" instead
function DmxRemotes:Aquire(class, undo) end
---@generic T : DmxRemote
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxRemote
function DmxRemotes:Insert(index, class, undo, count) end
---@generic T : DmxRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxRemote
function DmxRemotes:Find(class, undo) end