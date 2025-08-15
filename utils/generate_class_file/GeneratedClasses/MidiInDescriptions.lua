---@meta

---@class MidiInDescriptions: Object
local MidiInDescriptions = {}
---@return "MidiInDescriptions"
function MidiInDescriptions:GetClass() end
---@return "MIDIDeviceDescription"
function MidiInDescriptions:GetChildClass() end
---@generic T : MidiInDescriptions
---@param class `T`
---@return boolean
function MidiInDescriptions:IsClass(class) end
---@param index integer
---@return MIDIDeviceDescription
function MidiInDescriptions:Ptr(index) end
---@return MIDIDeviceDescription[]
function MidiInDescriptions:Children() end
---@return MIDIDeviceDescription?
function MidiInDescriptions:CurrentChild() end
---@overload fun(name: integer, role: nil): MIDIDeviceDescription
function MidiInDescriptions:Get(name, role) end
---@generic T : MIDIDeviceDescription
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MIDIDeviceDescription
function MidiInDescriptions:Create(index, class, undo) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiInDescriptions:Append(class, undo, count) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
function MidiInDescriptions:Acquire(class, undo) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
---@deprecated use "Acquire" instead
function MidiInDescriptions:Aquire(class, undo) end
---@generic T : MIDIDeviceDescription
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MIDIDeviceDescription
function MidiInDescriptions:Insert(index, class, undo, count) end
---@generic T : MIDIDeviceDescription
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MIDIDeviceDescription
function MidiInDescriptions:Find(class, undo) end
function MidiInDescriptions:SoftwareVersionID(property_name, property_value) end