---@meta

---@class ShowMetaData: Object
---@field Description string
---@field ShowShowHistory boolean
local ShowMetaData = {}
---@return "ShowMetaData"
function ShowMetaData:GetClass() end
---@return "Object"
function ShowMetaData:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Description", role: nil): string
---@overload fun(name: "ShowShowHistory", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Description"|"ShowShowHistory", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ShowMetaData:Get(name, role) end
