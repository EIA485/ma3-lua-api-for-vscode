---@meta

---@class GridObjectContentFilter: GridContentFilter
local GridObjectContentFilter = {}
---@return "GridObjectContentFilter"
function GridObjectContentFilter:GetClass() end
---@return "GridObjectContentFilterItem"
function GridObjectContentFilter:GetChildClass() end
---@generic T : GridObjectContentFilter
---@param class `T`
---@return boolean
function GridObjectContentFilter:IsClass(class) end
---@param index integer
---@return GridObjectContentFilterItem
function GridObjectContentFilter:Ptr(index) end
---@return GridObjectContentFilterItem[]
function GridObjectContentFilter:Children() end
---@return GridObjectContentFilterItem?
function GridObjectContentFilter:CurrentChild() end
---@overload fun(name: integer, role: nil): GridObjectContentFilterItem
function GridObjectContentFilter:Get(name, role) end
---@overload fun(index: integer, class: "GridObjectContentFilterItem", undo: Undo?): GridObjectContentFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?): GridObjectContentFilterItem
function GridObjectContentFilter:Create(index, class, undo) end
---@overload fun(class: "GridObjectContentFilterItem", undo: Undo?, count: integer?): GridObjectContentFilterItem
---@overload fun(class: nil, undo: Undo?, count: integer?): GridObjectContentFilterItem
function GridObjectContentFilter:Append(class, undo, count) end
---@overload fun(class: "GridObjectContentFilterItem", undo: Undo?): GridObjectContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridObjectContentFilterItem
function GridObjectContentFilter:Acquire(class, undo) end
---@overload fun(class: "GridObjectContentFilterItem", undo: Undo?): GridObjectContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridObjectContentFilterItem
---@deprecated use "Acquire" instead
function GridObjectContentFilter:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridObjectContentFilterItem", undo: Undo?, count: integer?): GridObjectContentFilterItem
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridObjectContentFilterItem
function GridObjectContentFilter:Insert(index, class, undo, count) end
---@overload fun(class: "GridObjectContentFilterItem", undo: Undo?): GridObjectContentFilterItem
---@overload fun(class: nil, undo: Undo?): GridObjectContentFilterItem
function GridObjectContentFilter:Find(class, undo) end
function GridObjectContentFilter:SetChildren(property_name, property_value) end