---@meta

---@class GridColumnFilterCollect: Object
---@field SelectedFilter string
local GridColumnFilterCollect = {}
---@return "GridColumnFilterCollect"
function GridColumnFilterCollect:GetClass() end
---@return "GridColumnFilter"
function GridColumnFilterCollect:GetChildClass() end
---@param index integer
---@return GridColumnFilter
function GridColumnFilterCollect:Ptr(index) end
---@return GridColumnFilter[]
function GridColumnFilterCollect:Children() end
---@return GridColumnFilter?
function GridColumnFilterCollect:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "SelectedFilter"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SelectedFilter"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GridColumnFilter
function GridColumnFilterCollect:Get(name, role) end
---@generic T : GridColumnFilter
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GridColumnFilter
function GridColumnFilterCollect:Create(index, class, undo) end
---@generic T : GridColumnFilter
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GridColumnFilter
function GridColumnFilterCollect:Append(class, undo, count) end
---@generic T : GridColumnFilter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumnFilter
function GridColumnFilterCollect:Acquire(class, undo) end
---@generic T : GridColumnFilter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumnFilter
---@deprecated use "Acquire" instead
function GridColumnFilterCollect:Aquire(class, undo) end
---@generic T : GridColumnFilter
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridColumnFilter
function GridColumnFilterCollect:Insert(index, class, undo, count) end
---@generic T : GridColumnFilter
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumnFilter
function GridColumnFilterCollect:Find(class, undo) end