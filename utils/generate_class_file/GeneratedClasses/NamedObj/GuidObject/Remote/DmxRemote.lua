---@meta

---@class DmxRemote: Remote
---@field Address DMXPropertyAddress
---@field Resolution Resolution
local DmxRemote = {}
---@return "DmxRemote"
function DmxRemote:GetClass() end
---@return "Object"
function DmxRemote:GetChildClass() end
---@return DmxRemotes
function DmxRemote:Parent() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Address", role: nil): DMXPropertyAddress
---@overload fun(name: "TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"In"|"Out", role: nil): DMXPropertyValue
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Fader"|"Key", role: nil): PresetActionToken
---@overload fun(name: "Resolution", role: nil): Resolution
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "OutFrom"|"OutTo"|"Enabled"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Address"|"Resolution"|"Target"|"Fader"|"Key"|"TriggerOn"|"TriggerOff"|"InFrom"|"InTo"|"OutFrom"|"OutTo"|"Enabled"|"In"|"Out"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DmxRemote:Get(name, role) end