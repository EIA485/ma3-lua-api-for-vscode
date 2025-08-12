---@meta

---@class MVRServiceInterface: NamedObj
---@field IP Manet.IP4
---@field Port integer
---@field Priority integer
---@field Weight integer
local MVRServiceInterface = {
    IP="No",
    Port="No",
    Priority="No",
    Weight="No"
}
---@return "MVRServiceInterface"
function MVRServiceInterface:GetClass() end
---@return "Object"
function MVRServiceInterface:GetChildClass() end
---@return MVRService
function MVRServiceInterface:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "IP", role: nil): Manet.IP4
---@overload fun(name: "Port"|"Priority"|"Weight", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IP"|"Port"|"Priority"|"Weight", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MVRServiceInterface:Get(name, role) end
