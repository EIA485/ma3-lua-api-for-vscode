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
---@overload fun(index: integer, class: "MIDIRemote", undo: Undo?): MIDIRemote
---@overload fun(index: integer, class: nil, undo: Undo?): MIDIRemote
function MIDIRemotes:Create(index, class, undo) end
---@overload fun(class: "MIDIRemote", undo: Undo?, count: integer?): MIDIRemote
---@overload fun(class: nil, undo: Undo?, count: integer?): MIDIRemote
function MIDIRemotes:Append(class, undo, count) end
---@overload fun(class: "MIDIRemote", undo: Undo?): MIDIRemote
---@overload fun(class: nil, undo: Undo?): MIDIRemote
function MIDIRemotes:Acquire(class, undo) end
---@overload fun(class: "MIDIRemote", undo: Undo?): MIDIRemote
---@overload fun(class: nil, undo: Undo?): MIDIRemote
---@deprecated use "Acquire" instead
function MIDIRemotes:Aquire(class, undo) end
---@overload fun(index: integer, class: "MIDIRemote", undo: Undo?, count: integer?): MIDIRemote
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MIDIRemote
function MIDIRemotes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MIDIRemote"): MIDIRemote
---@overload fun(name: string, class: nil): MIDIRemote
function MIDIRemotes:Find(name, class) end
---@overload fun(name: string, class: "MIDIRemote"): MIDIRemote
---@overload fun(name: string, class: nil): Object
function MIDIRemotes:FindRecursive(name, class) end
