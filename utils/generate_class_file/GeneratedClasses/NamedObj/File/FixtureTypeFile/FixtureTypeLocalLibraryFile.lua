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
---@overload fun(name: "OriginFixtureType", role: nil): FixtureType
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FileSize"|"FileTime"|"Lock"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "FileName"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Source"|"Objectname"|"DateModified"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "OriginFixtureType"|"FileSize"|"FileTime"|"FileName"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"Version"|"ActualSource"|"Source"|"Objectname"|"DateModified"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Get(name, role) end
---@generic T : FixtureTypeLocalModeLibFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Create(index, class, undo) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Append(class, undo, count) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Acquire(class, undo) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
---@deprecated use "Acquire" instead
function FixtureTypeLocalLibraryFile:Aquire(class, undo) end
---@generic T : FixtureTypeLocalModeLibFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Insert(index, class, undo, count) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Find(class, undo) end