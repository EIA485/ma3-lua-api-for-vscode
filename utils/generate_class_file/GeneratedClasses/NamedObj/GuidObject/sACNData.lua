---@meta

---@class sACNData: GuidObject
---@field Enabled integer
---@field Mode integer
---@field Destination
IP Manet.IP4
---@field Local
Universe integer
---@field Amount integer
---@field sACN
Universe integer
---@field Priority integer
---@field PreviewOnly integer
---@field TTL integer
---@field Delay number
---@field MergeMode integer
---@field InputPriority integer
local sACNData = {
    Enabled="No",
    Priority="100",
    PreviewOnly="No",
    TTL="8",
    Delay="0.1",
    InputPriority="LTP"
}
---@return "sACNData"
function sACNData:GetClass() end
---@return "Object"
function sACNData:GetChildClass() end
---@return sACNDataCollect
function sACNData:Parent() end
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
---@overload fun(name: "Local
Universe"|"Amount"|"sACN
Universe"|"Priority"|"PreviewOnly"|"TTL", role: nil): integer
---@overload fun(name: "Delay", role: nil): number
---@overload fun(name: "MergeMode"|"InputPriority", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Enabled"|"Mode"|"Destination
IP"|"Local
Universe"|"Amount"|"sACN
Universe"|"Priority"|"PreviewOnly"|"TTL"|"Delay"|"MergeMode"|"InputPriority", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function sACNData:Get(name, role) end
