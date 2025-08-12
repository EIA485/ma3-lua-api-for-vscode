---@meta

---@class Library: Object Caches a library on a drive, so it can be displayed in a grid.
---@field Filters string[]
---@field LibraryDestination Object
---@field LibraryPath string
---@field OptionalLibraryPath string
---@field UseCache boolean
---@field DumpContent fun()
local Library = {}
---@return "Library"
function Library:GetClass() end
---@return "File"
function Library:GetChildClass() end
---@return Cmdline
function Library:Parent() end
---@param index integer
---@return File
function Library:Ptr(index) end
---@return File[]
function Library:Children() end
---@return File?
function Library:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Filters", role: nil): string[]
---@overload fun(name: "LibraryDestination", role: nil): Object
---@overload fun(name: "LibraryPath"|"OptionalLibraryPath", role: nil): string
---@overload fun(name: "UseCache", role: nil): boolean
---@overload fun(name: "DumpContent", role: nil): fun()
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Filters"|"LibraryDestination"|"LibraryPath"|"OptionalLibraryPath"|"UseCache"|"DumpContent", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): File
function Library:Get(name, role) end
---@overload fun(index: integer, class: "File", undo: Undo?): File
---@overload fun(index: integer, class: "CachedObjLibraryFile", undo: Undo?): CachedObjLibraryFile
---@overload fun(index: integer, class: "UserImageLibraryFile", undo: Undo?): UserImageLibraryFile
---@overload fun(index: integer, class: "VideoLibraryFile", undo: Undo?): VideoLibraryFile
---@overload fun(index: integer, class: "AudioLibraryFile", undo: Undo?): AudioLibraryFile
---@overload fun(index: integer, class: "FixtureTypeFile", undo: Undo?): FixtureTypeFile
---@overload fun(index: integer, class: "FixtureTypeShareLibraryFile", undo: Undo?): FixtureTypeShareLibraryFile
---@overload fun(index: integer, class: "FixtureTypeLocalLibraryFile", undo: Undo?): FixtureTypeLocalLibraryFile
---@overload fun(index: integer, class: nil, undo: Undo?): File
function Library:Create(index, class, undo) end
---@overload fun(class: "File", undo: Undo?, count: integer?): File
---@overload fun(class: "CachedObjLibraryFile", undo: Undo?, count: integer?): CachedObjLibraryFile
---@overload fun(class: "UserImageLibraryFile", undo: Undo?, count: integer?): UserImageLibraryFile
---@overload fun(class: "VideoLibraryFile", undo: Undo?, count: integer?): VideoLibraryFile
---@overload fun(class: "AudioLibraryFile", undo: Undo?, count: integer?): AudioLibraryFile
---@overload fun(class: "FixtureTypeFile", undo: Undo?, count: integer?): FixtureTypeFile
---@overload fun(class: "FixtureTypeShareLibraryFile", undo: Undo?, count: integer?): FixtureTypeShareLibraryFile
---@overload fun(class: "FixtureTypeLocalLibraryFile", undo: Undo?, count: integer?): FixtureTypeLocalLibraryFile
---@overload fun(class: nil, undo: Undo?, count: integer?): File
function Library:Append(class, undo, count) end
---@overload fun(class: "File", undo: Undo?): File
---@overload fun(class: "CachedObjLibraryFile", undo: Undo?): CachedObjLibraryFile
---@overload fun(class: "UserImageLibraryFile", undo: Undo?): UserImageLibraryFile
---@overload fun(class: "VideoLibraryFile", undo: Undo?): VideoLibraryFile
---@overload fun(class: "AudioLibraryFile", undo: Undo?): AudioLibraryFile
---@overload fun(class: "FixtureTypeFile", undo: Undo?): FixtureTypeFile
---@overload fun(class: "FixtureTypeShareLibraryFile", undo: Undo?): FixtureTypeShareLibraryFile
---@overload fun(class: "FixtureTypeLocalLibraryFile", undo: Undo?): FixtureTypeLocalLibraryFile
---@overload fun(class: nil, undo: Undo?): File
function Library:Acquire(class, undo) end
---@overload fun(class: "File", undo: Undo?): File
---@overload fun(class: "CachedObjLibraryFile", undo: Undo?): CachedObjLibraryFile
---@overload fun(class: "UserImageLibraryFile", undo: Undo?): UserImageLibraryFile
---@overload fun(class: "VideoLibraryFile", undo: Undo?): VideoLibraryFile
---@overload fun(class: "AudioLibraryFile", undo: Undo?): AudioLibraryFile
---@overload fun(class: "FixtureTypeFile", undo: Undo?): FixtureTypeFile
---@overload fun(class: "FixtureTypeShareLibraryFile", undo: Undo?): FixtureTypeShareLibraryFile
---@overload fun(class: "FixtureTypeLocalLibraryFile", undo: Undo?): FixtureTypeLocalLibraryFile
---@overload fun(class: nil, undo: Undo?): File
---@deprecated use "Acquire" instead
function Library:Aquire(class, undo) end
---@overload fun(index: integer, class: "File", undo: Undo?, count: integer?): File
---@overload fun(index: integer, class: "CachedObjLibraryFile", undo: Undo?, count: integer?): CachedObjLibraryFile
---@overload fun(index: integer, class: "UserImageLibraryFile", undo: Undo?, count: integer?): UserImageLibraryFile
---@overload fun(index: integer, class: "VideoLibraryFile", undo: Undo?, count: integer?): VideoLibraryFile
---@overload fun(index: integer, class: "AudioLibraryFile", undo: Undo?, count: integer?): AudioLibraryFile
---@overload fun(index: integer, class: "FixtureTypeFile", undo: Undo?, count: integer?): FixtureTypeFile
---@overload fun(index: integer, class: "FixtureTypeShareLibraryFile", undo: Undo?, count: integer?): FixtureTypeShareLibraryFile
---@overload fun(index: integer, class: "FixtureTypeLocalLibraryFile", undo: Undo?, count: integer?): FixtureTypeLocalLibraryFile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): File
function Library:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "File"): File
---@overload fun(name: string, class: "CachedObjLibraryFile"): CachedObjLibraryFile
---@overload fun(name: string, class: "UserImageLibraryFile"): UserImageLibraryFile
---@overload fun(name: string, class: "VideoLibraryFile"): VideoLibraryFile
---@overload fun(name: string, class: "AudioLibraryFile"): AudioLibraryFile
---@overload fun(name: string, class: "FixtureTypeFile"): FixtureTypeFile
---@overload fun(name: string, class: "FixtureTypeShareLibraryFile"): FixtureTypeShareLibraryFile
---@overload fun(name: string, class: "FixtureTypeLocalLibraryFile"): FixtureTypeLocalLibraryFile
---@overload fun(name: string, class: nil): File
function Library:Find(name, class) end
---@overload fun(name: string, class: "File"): File
---@overload fun(name: string, class: "CachedObjLibraryFile"): CachedObjLibraryFile
---@overload fun(name: string, class: "UserImageLibraryFile"): UserImageLibraryFile
---@overload fun(name: string, class: "VideoLibraryFile"): VideoLibraryFile
---@overload fun(name: string, class: "AudioLibraryFile"): AudioLibraryFile
---@overload fun(name: string, class: "FixtureTypeFile"): FixtureTypeFile
---@overload fun(name: string, class: "FixtureTypeShareLibraryFile"): FixtureTypeShareLibraryFile
---@overload fun(name: string, class: "FixtureTypeLocalLibraryFile"): FixtureTypeLocalLibraryFile
---@overload fun(name: string, class: nil): Object
function Library:FindRecursive(name, class) end
