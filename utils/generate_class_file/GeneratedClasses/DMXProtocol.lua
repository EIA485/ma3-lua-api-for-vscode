---@meta

---@class DMXProtocol: Object
---@field Out integer
---@field In integer
---@field Interface string
---@field SetupMode integer
---@field Output
Delay integer
---@field PreferredIP Manet.IP4
local DMXProtocol = {
    Out="Off",
    In="Off",
    Interface="1.1",
    SetupMode="Off",
    ["Output
Delay"]="0"
}
---@return "DMXProtocol"
function DMXProtocol:GetClass() end
---@return "Object"
function DMXProtocol:GetChildClass() end
---@return DMXProtocols
function DMXProtocol:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Out"|"In", role: nil): integer
---@overload fun(name: "Interface", role: nil): string
---@overload fun(name: "SetupMode"|"Output
Delay", role: nil): integer
---@overload fun(name: "PreferredIP", role: nil): Manet.IP4
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Out"|"In"|"Interface"|"SetupMode"|"Output
Delay"|"PreferredIP", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DMXProtocol:Get(name, role) end
