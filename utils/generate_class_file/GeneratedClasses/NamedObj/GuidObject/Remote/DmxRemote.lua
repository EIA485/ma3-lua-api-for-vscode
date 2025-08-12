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
---@overload fun(name: "Address", role: nil): DMXPropertyAddress
---@overload fun(name: "Resolution", role: nil): Resolution
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Target"|"Fader"|"Key"|"Trigger
On"|"Trigger
Off"|"In
From"|"In
To"|"Out
From"|"Out
To"|"Enabled"|"In"|"Out"|"Address"|"Resolution", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DmxRemote:Get(name, role) end
