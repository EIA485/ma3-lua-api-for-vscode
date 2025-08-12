---@meta

---@class GridColumnNamesFilter: GridColumnFilter
local GridColumnNamesFilter = {}
---@return "GridColumnNamesFilter"
function GridColumnNamesFilter:GetClass() end
---@return "GridColumn"
function GridColumnNamesFilter:GetChildClass() end
---@param index integer
---@return GridColumn
function GridColumnNamesFilter:Ptr(index) end
---@return GridColumn[]
function GridColumnNamesFilter:Children() end
---@return GridColumn?
function GridColumnNamesFilter:CurrentChild() end
---@overload fun(name: integer, role: nil): GridColumn
function GridColumnNamesFilter:Get(name, role) end
---@overload fun(index: integer, class: "GridColumn", undo: Undo?): GridColumn
---@overload fun(index: integer, class: nil, undo: Undo?): GridColumn
function GridColumnNamesFilter:Create(index, class, undo) end
---@overload fun(class: "GridColumn", undo: Undo?, count: integer?): GridColumn
---@overload fun(class: nil, undo: Undo?, count: integer?): GridColumn
function GridColumnNamesFilter:Append(class, undo, count) end
---@overload fun(class: "GridColumn", undo: Undo?): GridColumn
---@overload fun(class: nil, undo: Undo?): GridColumn
function GridColumnNamesFilter:Acquire(class, undo) end
---@overload fun(class: "GridColumn", undo: Undo?): GridColumn
---@overload fun(class: nil, undo: Undo?): GridColumn
---@deprecated use "Acquire" instead
function GridColumnNamesFilter:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridColumn", undo: Undo?, count: integer?): GridColumn
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridColumn
function GridColumnNamesFilter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GridColumn"): GridColumn
---@overload fun(name: string, class: nil): GridColumn
function GridColumnNamesFilter:Find(name, class) end
---@overload fun(name: string, class: "GridColumn"): GridColumn
---@overload fun(name: string, class: nil): Object
function GridColumnNamesFilter:FindRecursive(name, class) end
