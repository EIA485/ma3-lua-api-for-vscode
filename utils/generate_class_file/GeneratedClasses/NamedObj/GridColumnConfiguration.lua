---@meta

---@class GridColumnConfiguration: NamedObj
---@field DefaultColumns ??_7?$Property@V?$HashFlatSet@VGridLine@DB@@U?$MemPtrFlatHashPolicies@VGridLine@DB@@$MPEQ12@_K0A@@Container@@@Container@@@DB@@6B@
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "DefaultColumns", role: nil): ??_7?$Property@V?$HashFlatSet@VGridLine@DB@@U?$MemPtrFlatHashPolicies@VGridLine@DB@@$MPEQ12@_K0A@@Container@@@Container@@@DB@@6B@
---@overload fun(name: "AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting", role: nil): integer
---@overload fun(name: "AllColumnsVisible"|"AllColumnsInvisible", role: nil): boolean
---@overload fun(name: "InitialWhiteFilter", role: nil): integer
---@overload fun(name: "MoveColumns", role: nil): fun(int1: integer, int2: integer, int3: integer, int4: integer) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultColumns"|"AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting"|"AllColumnsVisible"|"AllColumnsInvisible"|"InitialWhiteFilter"|"MoveColumns", role: Enums.Roles): string
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
---@overload fun(name: string, class: "GridLine"): GridLine
---@overload fun(name: string, class: nil): GridLine
function GridColumnConfiguration:Find(name, class) end
---@overload fun(name: string, class: "GridLine"): GridLine
---@overload fun(name: string, class: nil): Object
function GridColumnConfiguration:FindRecursive(name, class) end
