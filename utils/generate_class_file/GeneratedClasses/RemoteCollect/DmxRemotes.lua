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
---@overload fun(index: integer, class: "DmxRemote", undo: Undo?): DmxRemote
---@overload fun(index: integer, class: nil, undo: Undo?): DmxRemote
function DmxRemotes:Create(index, class, undo) end
---@overload fun(class: "DmxRemote", undo: Undo?, count: integer?): DmxRemote
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxRemote
function DmxRemotes:Append(class, undo, count) end
---@overload fun(class: "DmxRemote", undo: Undo?): DmxRemote
---@overload fun(class: nil, undo: Undo?): DmxRemote
function DmxRemotes:Acquire(class, undo) end
---@overload fun(class: "DmxRemote", undo: Undo?): DmxRemote
---@overload fun(class: nil, undo: Undo?): DmxRemote
---@deprecated use "Acquire" instead
function DmxRemotes:Aquire(class, undo) end
---@overload fun(index: integer, class: "DmxRemote", undo: Undo?, count: integer?): DmxRemote
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxRemote
function DmxRemotes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DmxRemote"): DmxRemote
---@overload fun(name: string, class: nil): DmxRemote
function DmxRemotes:Find(name, class) end
---@overload fun(name: string, class: "DmxRemote"): DmxRemote
---@overload fun(name: string, class: nil): Object
function DmxRemotes:FindRecursive(name, class) end
