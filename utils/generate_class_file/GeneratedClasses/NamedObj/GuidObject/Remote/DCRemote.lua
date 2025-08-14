---@meta

---@class DCRemote: Remote
---@field Signal integer
local DCRemote = {}
---@return "DCRemote"
function DCRemote:GetClass() end
---@return "Object"
function DCRemote:GetChildClass() end
---@return DCRemotes
function DCRemote:Parent() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"In"|"Out", role: nil): DMXPropertyValue
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Fader"|"Key", role: nil): PresetActionToken
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Signal"|"OutFrom"|"OutTo"|"Enabled"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Signal"|"Target"|"Fader"|"Key"|"TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"OutFrom"|"OutTo"|"Enabled"|"In"|"Out"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DCRemote:Get(name, role) end