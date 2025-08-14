---@meta

---@class GridColumnConfiguration: NamedObj
---@field AllowAddContent integer
---@field AllowAddNewline integer
---@field AllowMergeChildren integer
---@field UserChangedSorting integer
---@field AllColumnsVisible boolean
---@field AllColumnsInvisible boolean
---@field InitialWhiteFilter integer
---@field MoveColumns fun(int1: integer, int2: integer, int3: integer, int4: integer) : boolean
local GridColumnConfiguration = {
    AllowAddContent="Yes",
    AllowAddNewline="Yes",
    AllowMergeChildren="Yes"
}
---@return "GridColumnConfiguration"
function GridColumnConfiguration:GetClass() end
---@return "GridLine"
function GridColumnConfiguration:GetChildClass() end
---@param index integer
---@return GridLine
function GridColumnConfiguration:Ptr(index) end
---@return GridLine[]
function GridColumnConfiguration:Children() end
---@return GridLine?
function GridColumnConfiguration:CurrentChild() end
---@overload fun(name: "AllColumnsVisible"|"AllColumnsInvisible"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "MoveColumns", role: nil): fun(int1: integer, int2: integer, int3: integer, int4: integer) : boolean
---@overload fun(name: "AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting"|"InitialWhiteFilter"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting"|"AllColumnsVisible"|"AllColumnsInvisible"|"InitialWhiteFilter"|"MoveColumns"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GridLine
function GridColumnConfiguration:Get(name, role) end
---@overload fun(index: integer, class: "GridLine", undo: Undo?): GridLine
---@overload fun(index: integer, class: nil, undo: Undo?): GridLine
function GridColumnConfiguration:Create(index, class, undo) end
---@overload fun(class: "GridLine", undo: Undo?, count: integer?): GridLine
---@overload fun(class: nil, undo: Undo?, count: integer?): GridLine
function GridColumnConfiguration:Append(class, undo, count) end
---@overload fun(class: "GridLine", undo: Undo?): GridLine
---@overload fun(class: nil, undo: Undo?): GridLine
function GridColumnConfiguration:Acquire(class, undo) end
---@overload fun(class: "GridLine", undo: Undo?): GridLine
---@overload fun(class: nil, undo: Undo?): GridLine
---@deprecated use "Acquire" instead
function GridColumnConfiguration:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridLine", undo: Undo?, count: integer?): GridLine
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridLine
function GridColumnConfiguration:Insert(index, class, undo, count) end
---@overload fun(class: "GridLine", undo: Undo?): GridLine
---@overload fun(class: nil, undo: Undo?): GridLine
function GridColumnConfiguration:Find(class, undo) end