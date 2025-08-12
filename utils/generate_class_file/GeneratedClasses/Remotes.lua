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
---@overload fun(index: integer, class: "RemoteCollect", undo: Undo?): RemoteCollect
---@overload fun(index: integer, class: "DCRemotes", undo: Undo?): DCRemotes
---@overload fun(index: integer, class: "MIDIRemotes", undo: Undo?): MIDIRemotes
---@overload fun(index: integer, class: "DmxRemotes", undo: Undo?): DmxRemotes
---@overload fun(index: integer, class: nil, undo: Undo?): RemoteCollect
function Remotes:Create(index, class, undo) end
---@overload fun(class: "RemoteCollect", undo: Undo?, count: integer?): RemoteCollect
---@overload fun(class: "DCRemotes", undo: Undo?, count: integer?): DCRemotes
---@overload fun(class: "MIDIRemotes", undo: Undo?, count: integer?): MIDIRemotes
---@overload fun(class: "DmxRemotes", undo: Undo?, count: integer?): DmxRemotes
---@overload fun(class: nil, undo: Undo?, count: integer?): RemoteCollect
function Remotes:Append(class, undo, count) end
---@overload fun(class: "RemoteCollect", undo: Undo?): RemoteCollect
---@overload fun(class: "DCRemotes", undo: Undo?): DCRemotes
---@overload fun(class: "MIDIRemotes", undo: Undo?): MIDIRemotes
---@overload fun(class: "DmxRemotes", undo: Undo?): DmxRemotes
---@overload fun(class: nil, undo: Undo?): RemoteCollect
function Remotes:Acquire(class, undo) end
---@overload fun(class: "RemoteCollect", undo: Undo?): RemoteCollect
---@overload fun(class: "DCRemotes", undo: Undo?): DCRemotes
---@overload fun(class: "MIDIRemotes", undo: Undo?): MIDIRemotes
---@overload fun(class: "DmxRemotes", undo: Undo?): DmxRemotes
---@overload fun(class: nil, undo: Undo?): RemoteCollect
---@deprecated use "Acquire" instead
function Remotes:Aquire(class, undo) end
---@overload fun(index: integer, class: "RemoteCollect", undo: Undo?, count: integer?): RemoteCollect
---@overload fun(index: integer, class: "DCRemotes", undo: Undo?, count: integer?): DCRemotes
---@overload fun(index: integer, class: "MIDIRemotes", undo: Undo?, count: integer?): MIDIRemotes
---@overload fun(index: integer, class: "DmxRemotes", undo: Undo?, count: integer?): DmxRemotes
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RemoteCollect
function Remotes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RemoteCollect"): RemoteCollect
---@overload fun(name: string, class: "DCRemotes"): DCRemotes
---@overload fun(name: string, class: "MIDIRemotes"): MIDIRemotes
---@overload fun(name: string, class: "DmxRemotes"): DmxRemotes
---@overload fun(name: string, class: nil): RemoteCollect
function Remotes:Find(name, class) end
---@overload fun(name: string, class: "RemoteCollect"): RemoteCollect
---@overload fun(name: string, class: "DCRemotes"): DCRemotes
---@overload fun(name: string, class: "MIDIRemotes"): MIDIRemotes
---@overload fun(name: string, class: "DmxRemotes"): DmxRemotes
---@overload fun(name: string, class: nil): Object
function Remotes:FindRecursive(name, class) end
