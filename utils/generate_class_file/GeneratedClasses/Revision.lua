---@meta

---@class Revision: Object A brief description of who edited the fixture type and why.
---@field Text string
---@field Date Datum
---@field UserID integer
---@field ModifiedBy string
local Revision = {}
---@return "Revision"
function Revision:GetClass() end
---@return "Object"
function Revision:GetChildClass() end
---@return Revisions
function Revision:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Text", role: nil): string
---@overload fun(name: "Date", role: nil): Datum
---@overload fun(name: "UserID", role: nil): integer
---@overload fun(name: "ModifiedBy", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Text"|"Date"|"UserID"|"ModifiedBy", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Revision:Get(name, role) end
