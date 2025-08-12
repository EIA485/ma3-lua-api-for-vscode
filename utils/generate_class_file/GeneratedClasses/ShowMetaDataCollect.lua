---@meta

---@class ShowMetaDataCollect: Object Caches a ShowMetaDataFileCollect on a drive, so it can be displayed in a grid.
---@field ShowDestination Object
local ShowMetaDataCollect = {}
---@return "ShowMetaDataCollect"
function ShowMetaDataCollect:GetClass() end
---@return "MetaFile"
function ShowMetaDataCollect:GetChildClass() end
---@return Cmdline
function ShowMetaDataCollect:Parent() end
---@param index integer
---@return MetaFile
function ShowMetaDataCollect:Ptr(index) end
---@return MetaFile[]
function ShowMetaDataCollect:Children() end
---@return MetaFile?
function ShowMetaDataCollect:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ShowDestination", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ShowDestination", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MetaFile
function ShowMetaDataCollect:Get(name, role) end
---@overload fun(index: integer, class: "MetaFile", undo: Undo?): MetaFile
---@overload fun(index: integer, class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Create(index, class, undo) end
---@overload fun(class: "MetaFile", undo: Undo?, count: integer?): MetaFile
---@overload fun(class: nil, undo: Undo?, count: integer?): MetaFile
function ShowMetaDataCollect:Append(class, undo, count) end
---@overload fun(class: "MetaFile", undo: Undo?): MetaFile
---@overload fun(class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Acquire(class, undo) end
---@overload fun(class: "MetaFile", undo: Undo?): MetaFile
---@overload fun(class: nil, undo: Undo?): MetaFile
---@deprecated use "Acquire" instead
function ShowMetaDataCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "MetaFile", undo: Undo?, count: integer?): MetaFile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MetaFile
function ShowMetaDataCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MetaFile"): MetaFile
---@overload fun(name: string, class: nil): MetaFile
function ShowMetaDataCollect:Find(name, class) end
---@overload fun(name: string, class: "MetaFile"): MetaFile
---@overload fun(name: string, class: nil): Object
function ShowMetaDataCollect:FindRecursive(name, class) end
