---@meta

---@class ArtNetData: GuidObject
---@field Enabled integer
---@field Mode integer
---@field Destination
IP Manet.IP4
---@field Subscribed
Nodes integer
---@field Local
Universe integer
---@field Amount integer
---@field Net integer
---@field Art-Net
Sub-Net integer
---@field Universe integer
---@field Art-Net
Absolute integer
---@field Packet
Delay number
---@field Merge
Mode integer
---@field Input
Priority integer
---@field Timecode
Slot integer
---@field Enable
Rdm integer
local ArtNetData = {
    Enabled="No",
    Mode="Auto",
    ["Packet
Delay"]="0.1",
    ["Input
Priority"]="LTP",
    ["Enable
Rdm"]="No"
}
---@return "ArtNetData"
function ArtNetData:GetClass() end
---@return "Object"
function ArtNetData:GetChildClass() end
---@return ArtNetDataCollect
function ArtNetData:Parent() end
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
---@overload fun(name: "Enabled"|"Mode", role: nil): integer
---@overload fun(name: "Destination
IP", role: nil): Manet.IP4
---@overload fun(name: "Subscribed
Nodes"|"Local
Universe"|"Amount"|"Net"|"Art-Net
Sub-Net"|"Universe"|"Art-Net
Absolute", role: nil): integer
---@overload fun(name: "Packet
Delay", role: nil): number
---@overload fun(name: "Merge
Mode"|"Input
Priority"|"Timecode
Slot"|"Enable
Rdm", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Enabled"|"Mode"|"Destination
IP"|"Subscribed
Nodes"|"Local
Universe"|"Amount"|"Net"|"Art-Net
Sub-Net"|"Universe"|"Art-Net
Absolute"|"Packet
Delay"|"Merge
Mode"|"Input
Priority"|"Timecode
Slot"|"Enable
Rdm", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ArtNetData:Get(name, role) end
