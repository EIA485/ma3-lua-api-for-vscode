---@meta

---@class CachedObjLibraryFile: File Library cache entry for a fixture type.
---@field CachedObjFileName string
---@field FileSize integer
---@field TooBig boolean
local CachedObjLibraryFile = {
    TooBig="No"
}
---@return "CachedObjLibraryFile"
function CachedObjLibraryFile:GetClass() end
---@return "Object"
function CachedObjLibraryFile:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Objectname"|"FileName", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "DateModified"|"Path"|"CachedObjFileName", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "TooBig", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"FileSize"|"DateModified"|"Path"|"CachedObjFileName"|"FileSize"|"TooBig", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CachedObjLibraryFile:Get(name, role) end
