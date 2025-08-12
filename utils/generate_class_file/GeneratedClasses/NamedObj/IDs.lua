---@meta

---@class IDs: NamedObj
---@field Name string
---@field MaxID integer
---@field Used integer
local IDs = {
    Used="0"
}
---@return "IDs"
function IDs:GetClass() end
---@return "Object"
function IDs:GetChildClass() end
---@return IDTypes
function IDs:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "MaxID"|"Used", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Name"|"MaxID"|"Used", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function IDs:Get(name, role) end
