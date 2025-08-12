---@meta

---@class NDISource: NamedObj
---@field URL string
---@field Bandwidth NDIlib_recv_bandwidth_e
---@field BadVideoFormat boolean
local NDISource = {
    Bandwidth="Lowest"
}
---@return "NDISource"
function NDISource:GetClass() end
---@return "Object"
function NDISource:GetChildClass() end
---@return NDI
function NDISource:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "URL", role: nil): string
---@overload fun(name: "Bandwidth", role: nil): NDIlib_recv_bandwidth_e
---@overload fun(name: "BadVideoFormat", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"URL"|"Bandwidth"|"BadVideoFormat", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function NDISource:Get(name, role) end
