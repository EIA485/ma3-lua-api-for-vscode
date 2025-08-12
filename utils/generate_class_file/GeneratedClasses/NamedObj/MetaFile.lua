---@meta

---@class MetaFile: NamedObj ShowMetaDataFile cache entry.
---@field FileName string
---@field FileSize integer
---@field FileTime integer
---@field Path string
---@field Description string
local MetaFile = {}
---@return "MetaFile"
function MetaFile:GetClass() end
---@return "Object"
function MetaFile:GetChildClass() end
---@return ShowMetaDataCollect
function MetaFile:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "FileName", role: nil): string
---@overload fun(name: "FileSize"|"FileTime", role: nil): integer
---@overload fun(name: "Path"|"Description", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FileName"|"FileSize"|"FileTime"|"Path"|"Description", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MetaFile:Get(name, role) end
