---@meta

---@class Collection: Object
---@field IndexesSorted integer[]
---@field BaseObject Object
local Collection = {}
---@return "Collection"
function Collection:GetClass() end
---@return "Object"
function Collection:GetChildClass() end
---@return UserProfile
function Collection:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "IndexesSorted", role: nil): integer[]
---@overload fun(name: "BaseObject", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IndexesSorted"|"BaseObject", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Collection:Get(name, role) end
