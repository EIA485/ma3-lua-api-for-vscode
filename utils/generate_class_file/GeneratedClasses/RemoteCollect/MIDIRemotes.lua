---@meta

---@class MIDIRemotes: RemoteCollect
local MIDIRemotes = {}
---@return "MIDIRemotes"
function MIDIRemotes:GetClass() end
---@return "MIDIRemote"
function MIDIRemotes:GetChildClass() end
---@generic T : MIDIRemotes
---@param class `T`
---@return boolean
function MIDIRemotes:IsClass(class) end
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
---@overload fun(property_name: "MIDIType", property_value: RemoteMidiType)
---@overload fun(property_name: "MIDIType", property_value: RemoteMidiType)
---@overload fun(property_name: "InTo"|"MIDIChannel"|"MIDIIndex"|"TriggerOn"|"TriggerOff"|"InFrom", property_value: integer)
function MIDIRemotes:SetChildren(property_name, property_value) end