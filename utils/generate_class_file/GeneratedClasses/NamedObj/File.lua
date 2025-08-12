---@meta

---@class File: NamedObj Library cache entry.
---@field Objectname string Name of the root object in the library file
---@field FileName string
---@field FileSize integer
---@field DateModified string
---@field Path string
local File = {}
---@return "File"
function File:GetClass() end
---@return "Object"
function File:GetChildClass() end
---@return Library
function File:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Objectname"|"FileName", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "DateModified"|"Path", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"FileSize"|"DateModified"|"Path", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function File:Get(name, role) end
