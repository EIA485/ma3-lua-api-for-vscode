---@meta

---@class MIDIRemote: Remote
---@field Trigger
On integer
---@field Trigger
Off integer
---@field In
From integer
---@field In
To integer
---@field MIDI
Channel integer
---@field MIDI
Index integer
---@field MIDI
Type integer
local MIDIRemote = {}
---@return "MIDIRemote"
function MIDIRemote:GetClass() end
---@return "Object"
function MIDIRemote:GetChildClass() end
---@return MIDIRemotes
function MIDIRemote:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Fader"|"Key", role: nil): PresetActionToken
---@overload fun(name: "Trigger
On"|"Trigger
Off"|"In
From"|"In
To", role: nil): DMXPropertyValue
---@overload fun(name: "Out
From"|"Out
To"|"Enabled", role: nil): integer
---@overload fun(name: "In"|"Out", role: nil): DMXPropertyValue
---@overload fun(name: "Trigger
On"|"Trigger
Off"|"In
From"|"In
To"|"MIDI
Channel"|"MIDI
Index"|"MIDI
Type", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Target"|"Fader"|"Key"|"Trigger
On"|"Trigger
Off"|"In
From"|"In
To"|"Out
From"|"Out
To"|"Enabled"|"In"|"Out"|"Trigger
On"|"Trigger
Off"|"In
From"|"In
To"|"MIDI
Channel"|"MIDI
Index"|"MIDI
Type", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MIDIRemote:Get(name, role) end
