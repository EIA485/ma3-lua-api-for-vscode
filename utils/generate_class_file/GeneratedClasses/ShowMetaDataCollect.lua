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
---@overload fun(name: "ShowDestination", role: nil): Object
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "ShowDestination"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MetaFile
function ShowMetaDataCollect:Get(name, role) end
---@generic T : MetaFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Create(index, class, undo) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MetaFile
function ShowMetaDataCollect:Append(class, undo, count) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Acquire(class, undo) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MetaFile
---@deprecated use "Acquire" instead
function ShowMetaDataCollect:Aquire(class, undo) end
---@generic T : MetaFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MetaFile
function ShowMetaDataCollect:Insert(index, class, undo, count) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Find(class, undo) end