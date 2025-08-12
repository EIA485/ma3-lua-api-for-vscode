---@meta

---@class MidiInDescriptions: Object
local MidiInDescriptions = {}
---@return "MidiInDescriptions"
function MidiInDescriptions:GetClass() end
---@return "MIDIDeviceDescription"
function MidiInDescriptions:GetChildClass() end
---@param index integer
---@return MIDIDeviceDescription
function MidiInDescriptions:Ptr(index) end
---@return MIDIDeviceDescription[]
function MidiInDescriptions:Children() end
---@return MIDIDeviceDescription?
function MidiInDescriptions:CurrentChild() end
---@overload fun(name: integer, role: nil): MIDIDeviceDescription
function MidiInDescriptions:Get(name, role) end
---@overload fun(index: integer, class: "MIDIDeviceDescription", undo: Undo?): MIDIDeviceDescription
---@overload fun(index: integer, class: nil, undo: Undo?): MIDIDeviceDescription
function MidiInDescriptions:Create(index, class, undo) end
---@overload fun(class: "MIDIDeviceDescription", undo: Undo?, count: integer?): MIDIDeviceDescription
---@overload fun(class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiInDescriptions:Append(class, undo, count) end
---@overload fun(class: "MIDIDeviceDescription", undo: Undo?): MIDIDeviceDescription
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
function MidiInDescriptions:Acquire(class, undo) end
---@overload fun(class: "MIDIDeviceDescription", undo: Undo?): MIDIDeviceDescription
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
---@deprecated use "Acquire" instead
function MidiInDescriptions:Aquire(class, undo) end
---@overload fun(index: integer, class: "MIDIDeviceDescription", undo: Undo?, count: integer?): MIDIDeviceDescription
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiInDescriptions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MIDIDeviceDescription"): MIDIDeviceDescription
---@overload fun(name: string, class: nil): MIDIDeviceDescription
function MidiInDescriptions:Find(name, class) end
---@overload fun(name: string, class: "MIDIDeviceDescription"): MIDIDeviceDescription
---@overload fun(name: string, class: nil): Object
function MidiInDescriptions:FindRecursive(name, class) end
