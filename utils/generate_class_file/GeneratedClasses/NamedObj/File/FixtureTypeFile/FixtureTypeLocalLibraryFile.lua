---@meta

---@class FixtureTypeLocalLibraryFile: FixtureTypeFile Library cache entry for a local (in the current show) fixture type.
---@field OriginFixtureType FixtureType
---@field FileSize integer
---@field FileTime integer
---@field FileName string
---@field Path string
local FixtureTypeLocalLibraryFile = {}
---@return "FixtureTypeLocalLibraryFile"
function FixtureTypeLocalLibraryFile:GetClass() end
---@return "FixtureTypeLocalModeLibFile"
function FixtureTypeLocalLibraryFile:GetChildClass() end
---@param index integer
---@return FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Ptr(index) end
---@return FixtureTypeLocalModeLibFile[]
function FixtureTypeLocalLibraryFile:Children() end
---@return FixtureTypeLocalModeLibFile?
function FixtureTypeLocalLibraryFile:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Objectname"|"FileName", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel", role: nil): string
---@overload fun(name: "Lock", role: nil): integer
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "ActualSource"|"Source", role: nil): string
---@overload fun(name: "OriginFixtureType", role: nil): FixtureType
---@overload fun(name: "FileSize"|"FileTime", role: nil): integer
---@overload fun(name: "FileName"|"Path", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"FileSize"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"Version"|"ActualSource"|"Source"|"OriginFixtureType"|"FileSize"|"FileTime"|"FileName"|"Path", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Get(name, role) end
---@overload fun(index: integer, class: "FixtureTypeLocalModeLibFile", undo: Undo?): FixtureTypeLocalModeLibFile
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Create(index, class, undo) end
---@overload fun(class: "FixtureTypeLocalModeLibFile", undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Append(class, undo, count) end
---@overload fun(class: "FixtureTypeLocalModeLibFile", undo: Undo?): FixtureTypeLocalModeLibFile
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Acquire(class, undo) end
---@overload fun(class: "FixtureTypeLocalModeLibFile", undo: Undo?): FixtureTypeLocalModeLibFile
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
---@deprecated use "Acquire" instead
function FixtureTypeLocalLibraryFile:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureTypeLocalModeLibFile", undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureTypeLocalModeLibFile"): FixtureTypeLocalModeLibFile
---@overload fun(name: string, class: nil): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Find(name, class) end
---@overload fun(name: string, class: "FixtureTypeLocalModeLibFile"): FixtureTypeLocalModeLibFile
---@overload fun(name: string, class: nil): Object
function FixtureTypeLocalLibraryFile:FindRecursive(name, class) end
