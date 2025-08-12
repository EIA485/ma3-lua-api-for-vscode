---@meta

---@class GridPatchContentFilter: GridObjectContentFilter
local GridPatchContentFilter = {}
---@return "GridPatchContentFilter"
function GridPatchContentFilter:GetClass() end
---@return "GridPatchContentFilterItem"
function GridPatchContentFilter:GetChildClass() end
---@param index integer
---@return GridPatchContentFilterItem
function GridPatchContentFilter:Ptr(index) end
---@return GridPatchContentFilterItem[]
function GridPatchContentFilter:Children() end
---@return GridPatchContentFilterItem?
function GridPatchContentFilter:CurrentChild() end
---@overload fun(name: integer, role: nil): GridPatchContentFilterItem
function GridPatchContentFilter:Get(name, role) end
---@overload fun(index: integer, class: "GridPatchContentFilterItem", undo: Undo?): GridPatchContentFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?): GridPatchContentFilterItem
function GridPatchContentFilter:Create(index, class, undo) end
---@overload fun(class: "GridPatchContentFilterItem", undo: Undo?, count: integer?): GridPatchContentFilterItem
---@overload fun(class: nil, undo: Undo?, count: integer?): GridPatchContentFilterItem
function GridPatchContentFilter:Append(class, undo, count) end
---@overload fun(class: "GridPatchContentFilterItem", undo: Undo?): GridPatchContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridPatchContentFilterItem
function GridPatchContentFilter:Acquire(class, undo) end
---@overload fun(class: "GridPatchContentFilterItem", undo: Undo?): GridPatchContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridPatchContentFilterItem
---@deprecated use "Acquire" instead
function GridPatchContentFilter:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridPatchContentFilterItem", undo: Undo?, count: integer?): GridPatchContentFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridPatchContentFilterItem
function GridPatchContentFilter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GridPatchContentFilterItem"): GridPatchContentFilterItem
---@overload fun(name: string, class: nil): GridPatchContentFilterItem
function GridPatchContentFilter:Find(name, class) end
---@overload fun(name: string, class: "GridPatchContentFilterItem"): GridPatchContentFilterItem
---@overload fun(name: string, class: nil): Object
function GridPatchContentFilter:FindRecursive(name, class) end
