---@meta

---@class MIDIRemote: Remote
---@field TriggerOn integer
---@field TriggerOff integer
---@field InFrom integer
---@field InTo integer
---@field MIDIChannel integer
---@field MIDIIndex integer
---@field MIDIType integer
local MIDIRemote = {}
---@return "MIDIRemote"
function MIDIRemote:GetClass() end
---@return "Object"
function MIDIRemote:GetChildClass() end
---@return MIDIRemotes
function MIDIRemote:Parent() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "In"|"Out", role: nil): DMXPropertyValue
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Fader"|"Key", role: nil): PresetActionToken
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"MIDIChannel"|"MIDIIndex"|"MIDIType"|"OutFrom"|"OutTo"|"Enabled"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"MIDIChannel"|"MIDIIndex"|"MIDIType"|"Target"|"Fader"|"Key"|"OutFrom"|"OutTo"|"Enabled"|"In"|"Out"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MIDIRemote:Get(name, role) end