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
---@overload fun(name: "LibraryDestination", role: nil): Object
---@overload fun(name: "UseCache"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DumpContent", role: nil): fun()
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "LibraryPath"|"OptionalLibraryPath"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Filters", role: nil): string[]
---@overload fun(name: "Filters"|"LibraryDestination"|"LibraryPath"|"OptionalLibraryPath"|"UseCache"|"DumpContent"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): File
function Library:Get(name, role) end
---@generic T : File
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): File
function Library:Create(index, class, undo) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): File
function Library:Append(class, undo, count) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): File
function Library:Acquire(class, undo) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): File
---@deprecated use "Acquire" instead
function Library:Aquire(class, undo) end
---@generic T : File
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): File
function Library:Insert(index, class, undo, count) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): File
function Library:Find(class, undo) end