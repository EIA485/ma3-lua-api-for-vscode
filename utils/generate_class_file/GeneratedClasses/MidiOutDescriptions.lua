---@meta

---@class MidiOutDescriptions: Object
local MidiOutDescriptions = {}
---@return "MidiOutDescriptions"
function MidiOutDescriptions:GetClass() end
---@return "MIDIDeviceDescription"
function MidiOutDescriptions:GetChildClass() end
---@param index integer
---@return MIDIDeviceDescription
function MidiOutDescriptions:Ptr(index) end
---@return MIDIDeviceDescription[]
function MidiOutDescriptions:Children() end
---@return MIDIDeviceDescription?
function MidiOutDescriptions:CurrentChild() end
---@overload fun(name: integer, role: nil): MIDIDeviceDescription
function MidiOutDescriptions:Get(name, role) end
---@generic T : MIDIDeviceDescription
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MIDIDeviceDescription
function MidiOutDescriptions:Create(index, class, undo) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiOutDescriptions:Append(class, undo, count) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
function MidiOutDescriptions:Acquire(class, undo) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
---@deprecated use "Acquire" instead
function MidiOutDescriptions:Aquire(class, undo) end
---@generic T : MIDIDeviceDescription
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiOutDescriptions:Insert(index, class, undo, count) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
function MidiOutDescriptions:Find(class, undo) end