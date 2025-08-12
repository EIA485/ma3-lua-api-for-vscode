---@meta

---@class FTFilters: Object
local FTFilters = {}
---@return "FTFilters"
function FTFilters:GetClass() end
---@return "FTFilter"
function FTFilters:GetChildClass() end
---@return PhysicalDescriptions
function FTFilters:Parent() end
---@param index integer
---@return FTFilter
function FTFilters:Ptr(index) end
---@return FTFilter[]
function FTFilters:Children() end
---@return FTFilter?
function FTFilters:CurrentChild() end
---@overload fun(name: integer, role: nil): FTFilter
function FTFilters:Get(name, role) end
---@overload fun(index: integer, class: "FTFilter", undo: Undo?): FTFilter
---@overload fun(index: integer, class: nil, undo: Undo?): FTFilter
function FTFilters:Create(index, class, undo) end
---@overload fun(class: "FTFilter", undo: Undo?, count: integer?): FTFilter
---@overload fun(class: nil, undo: Undo?, count: integer?): FTFilter
function FTFilters:Append(class, undo, count) end
---@overload fun(class: "FTFilter", undo: Undo?): FTFilter
---@overload fun(class: nil, undo: Undo?): FTFilter
function FTFilters:Acquire(class, undo) end
---@overload fun(class: "FTFilter", undo: Undo?): FTFilter
---@overload fun(class: nil, undo: Undo?): FTFilter
---@deprecated use "Acquire" instead
function FTFilters:Aquire(class, undo) end
---@overload fun(index: integer, class: "FTFilter", undo: Undo?, count: integer?): FTFilter
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTFilter
function FTFilters:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FTFilter"): FTFilter
---@overload fun(name: string, class: nil): FTFilter
function FTFilters:Find(name, class) end
---@overload fun(name: string, class: "FTFilter"): FTFilter
---@overload fun(name: string, class: nil): Object
function FTFilters:FindRecursive(name, class) end
