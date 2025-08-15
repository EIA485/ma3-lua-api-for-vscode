---@meta

---@class GridPatchContentFilter: GridObjectContentFilter
local GridPatchContentFilter = {}
---@return "GridPatchContentFilter"
function GridPatchContentFilter:GetClass() end
---@return "GridPatchContentFilterItem"
function GridPatchContentFilter:GetChildClass() end
---@generic T : GridPatchContentFilter
---@param class `T`
---@return boolean
function GridPatchContentFilter:IsClass(class) end
---@param index integer
---@return GridPatchContentFilterItem
function GridPatchContentFilter:Ptr(index) end
---@return GridPatchContentFilterItem[]
function GridPatchContentFilter:Children() end
---@return GridPatchContentFilterItem?
function GridPatchContentFilter:CurrentChild() end
---@overload fun(name: integer, role: nil): GridPatchContentFilterItem
function GridPatchContentFilter:Get(name, role) end
---@generic T : GridPatchContentFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GridPatchContentFilterItem
function GridPatchContentFilter:Create(index, class, undo) end
---@generic T : GridPatchContentFilterItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GridPatchContentFilterItem
function GridPatchContentFilter:Append(class, undo, count) end
---@generic T : GridPatchContentFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridPatchContentFilterItem
function GridPatchContentFilter:Acquire(class, undo) end
---@generic T : GridPatchContentFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridPatchContentFilterItem
---@deprecated use "Acquire" instead
function GridPatchContentFilter:Aquire(class, undo) end
---@generic T : GridPatchContentFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridPatchContentFilterItem
function GridPatchContentFilter:Insert(index, class, undo, count) end
---@generic T : GridPatchContentFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridPatchContentFilterItem
function GridPatchContentFilter:Find(class, undo) end
---@overload fun(property_name: "PopupFilter", property_value: string)
---@overload fun(property_name: "PopupFilter", property_value: string)
function GridPatchContentFilter:PopupFilter(property_name, property_value) end