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
---@overload fun(name: "TooBig"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FileSize"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "CachedObjFileName"|"Objectname"|"FileName"|"DateModified"|"Path"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "CachedObjFileName"|"FileSize"|"TooBig"|"Objectname"|"FileName"|"DateModified"|"Path"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CachedObjLibraryFile:Get(name, role) end