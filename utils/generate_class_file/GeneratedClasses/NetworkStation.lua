---@meta

---@class NetworkStation: Object
---@field Type string
---@field IP string
---@field Session string
---@field Location string
---@field Show
File string
---@field Status string
---@field Master
Prio string
---@field VersionBig string
---@field VersionSmall string
---@field Enabled string
---@field Online
Time string
---@field SessionIndex string
---@field SessionSlot string
---@field Remote
IP string
---@field Mask string
---@field Minimum
Version string
---@field FlowControl
Level integer
---@field HostData Container.SharedPtr<class Manet.HostDataExt>
---@field NACKCountPer1m/5m/10m integer
---@field NACKCountTotal integer
local NetworkStation = {}
---@return "NetworkStation"
function NetworkStation:GetClass() end
---@return "Object"
function NetworkStation:GetChildClass() end
---@return NetworkStations
function NetworkStation:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type"|"IP"|"Session"|"Location"|"Show
File"|"Status"|"Master
Prio"|"VersionBig"|"VersionSmall"|"Enabled"|"Online
Time"|"SessionIndex"|"SessionSlot"|"Remote
IP"|"Mask"|"Minimum
Version", role: nil): string
---@overload fun(name: "FlowControl
Level", role: nil): integer
---@overload fun(name: "HostData", role: nil): Container.SharedPtr<class Manet.HostDataExt>
---@overload fun(name: "NACKCountPer1m/5m/10m"|"NACKCountTotal", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"IP"|"Session"|"Location"|"Show
File"|"Status"|"Master
Prio"|"VersionBig"|"VersionSmall"|"Enabled"|"Online
Time"|"SessionIndex"|"SessionSlot"|"Remote
IP"|"Mask"|"Minimum
Version"|"FlowControl
Level"|"HostData"|"NACKCountPer1m/5m/10m"|"NACKCountTotal", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function NetworkStation:Get(name, role) end
