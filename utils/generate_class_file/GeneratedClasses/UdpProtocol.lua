---@meta

---@class UdpProtocol: Object
---@field Out integer
---@field In integer
---@field Interface string
---@field PreferredIP Manet.IP4
local UdpProtocol = {
    Out="Off",
    In="Off",
    Interface="1.1"
}
---@return "UdpProtocol"
function UdpProtocol:GetClass() end
---@return "Object"
function UdpProtocol:GetChildClass() end
---@return ShowData
function UdpProtocol:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Out"|"In", role: nil): integer
---@overload fun(name: "Interface", role: nil): string
---@overload fun(name: "PreferredIP", role: nil): Manet.IP4
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Out"|"In"|"Interface"|"PreferredIP", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UdpProtocol:Get(name, role) end
