---@meta

---@class ImportFakeObject: Object
---@field Source
Index integer
---@field Destination
Index integer
local ImportFakeObject = {}
---@return "ImportFakeObject"
function ImportFakeObject:GetClass() end
---@return "Object"
function ImportFakeObject:GetChildClass() end
---@return ImportObjectCollect
function ImportFakeObject:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Source
Index"|"Destination
Index", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Source
Index"|"Destination
Index", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ImportFakeObject:Get(name, role) end
