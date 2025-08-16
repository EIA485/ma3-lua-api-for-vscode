---@meta

---@class GridColumnNamesFilter: GridColumnFilter
local GridColumnNamesFilter = {}
---@return "GridColumnNamesFilter"
function GridColumnNamesFilter:GetClass() end
---@return "GridColumn"
function GridColumnNamesFilter:GetChildClass() end
---@generic T : GridColumnNamesFilter
---@param class `T`
---@return boolean
function GridColumnNamesFilter:IsClass(class) end
---@param index integer
---@return GridColumn
function GridColumnNamesFilter:Ptr(index) end
---@return GridColumn[]
function GridColumnNamesFilter:Children() end
---@return GridColumn?
function GridColumnNamesFilter:CurrentChild() end
---@overload fun(name: integer, role: nil): GridColumn
function GridColumnNamesFilter:Get(name, role) end
---@generic T : GridColumn
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GridColumn
function GridColumnNamesFilter:Create(index, class, undo) end
---@generic T : GridColumn
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GridColumn
function GridColumnNamesFilter:Append(class, undo, count) end
---@generic T : GridColumn
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumn
function GridColumnNamesFilter:Acquire(class, undo) end
---@generic T : GridColumn
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumn
---@deprecated use "Acquire" instead
function GridColumnNamesFilter:Aquire(class, undo) end
---@generic T : GridColumn
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridColumn
function GridColumnNamesFilter:Insert(index, class, undo, count) end
---@generic T : GridColumn
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumn
function GridColumnNamesFilter:Find(class, undo) end
---@overload fun(property_name: "Visible", property_value: YesNo|boolean)
---@overload fun(property_name: "Visible", property_value: YesNo|boolean)
function GridColumnNamesFilter:SetChildren(property_name, property_value) end