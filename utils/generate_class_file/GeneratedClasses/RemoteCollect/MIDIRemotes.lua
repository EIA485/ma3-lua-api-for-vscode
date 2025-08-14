---@meta

---@class MIDIRemotes: RemoteCollect
local MIDIRemotes = {}
---@return "MIDIRemotes"
function MIDIRemotes:GetClass() end
---@return "MIDIRemote"
function MIDIRemotes:GetChildClass() end
---@param index integer
---@return MIDIRemote
function MIDIRemotes:Ptr(index) end
---@return MIDIRemote[]
function MIDIRemotes:Children() end
---@return MIDIRemote?
function MIDIRemotes:CurrentChild() end
---@overload fun(name: integer, role: nil): MIDIRemote
function MIDIRemotes:Get(name, role) end
---@generic T : MIDIRemote
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MIDIRemote
function MIDIRemotes:Create(index, class, undo) end
---@generic T : MIDIRemote
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MIDIRemote
function MIDIRemotes:Append(class, undo, count) end
---@generic T : MIDIRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIRemote
function MIDIRemotes:Acquire(class, undo) end
---@generic T : MIDIRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIRemote
---@deprecated use "Acquire" instead
function MIDIRemotes:Aquire(class, undo) end
---@generic T : MIDIRemote
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MIDIRemote
function MIDIRemotes:Insert(index, class, undo, count) end
---@generic T : MIDIRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIRemote
function MIDIRemotes:Find(class, undo) end