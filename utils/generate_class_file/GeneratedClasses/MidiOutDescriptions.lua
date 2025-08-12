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
---@overload fun(index: integer, class: "MIDIDeviceDescription", undo: Undo?): MIDIDeviceDescription
---@overload fun(index: integer, class: nil, undo: Undo?): MIDIDeviceDescription
function MidiOutDescriptions:Create(index, class, undo) end
---@overload fun(class: "MIDIDeviceDescription", undo: Undo?, count: integer?): MIDIDeviceDescription
---@overload fun(class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiOutDescriptions:Append(class, undo, count) end
---@overload fun(class: "MIDIDeviceDescription", undo: Undo?): MIDIDeviceDescription
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
function MidiOutDescriptions:Acquire(class, undo) end
---@overload fun(class: "MIDIDeviceDescription", undo: Undo?): MIDIDeviceDescription
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
---@deprecated use "Acquire" instead
function MidiOutDescriptions:Aquire(class, undo) end
---@overload fun(index: integer, class: "MIDIDeviceDescription", undo: Undo?, count: integer?): MIDIDeviceDescription
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiOutDescriptions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MIDIDeviceDescription"): MIDIDeviceDescription
---@overload fun(name: string, class: nil): MIDIDeviceDescription
function MidiOutDescriptions:Find(name, class) end
---@overload fun(name: string, class: "MIDIDeviceDescription"): MIDIDeviceDescription
---@overload fun(name: string, class: nil): Object
function MidiOutDescriptions:FindRecursive(name, class) end
