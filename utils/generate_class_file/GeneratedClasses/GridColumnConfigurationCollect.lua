---@meta

---@class GridColumnConfigurationCollect: Object
local GridColumnConfigurationCollect = {}
---@return "GridColumnConfigurationCollect"
function GridColumnConfigurationCollect:GetClass() end
---@return "GridColumnConfiguration"
function GridColumnConfigurationCollect:GetChildClass() end
---@param index integer
---@return GridColumnConfiguration
function GridColumnConfigurationCollect:Ptr(index) end
---@return GridColumnConfiguration[]
function GridColumnConfigurationCollect:Children() end
---@return GridColumnConfiguration?
function GridColumnConfigurationCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): GridColumnConfiguration
function GridColumnConfigurationCollect:Get(name, role) end
---@generic T : GridColumnConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GridColumnConfiguration
function GridColumnConfigurationCollect:Create(index, class, undo) end
---@generic T : GridColumnConfiguration
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GridColumnConfiguration
function GridColumnConfigurationCollect:Append(class, undo, count) end
---@generic T : GridColumnConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumnConfiguration
function GridColumnConfigurationCollect:Acquire(class, undo) end
---@generic T : GridColumnConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumnConfiguration
---@deprecated use "Acquire" instead
function GridColumnConfigurationCollect:Aquire(class, undo) end
---@generic T : GridColumnConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridColumnConfiguration
function GridColumnConfigurationCollect:Insert(index, class, undo, count) end
---@generic T : GridColumnConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GridColumnConfiguration
function GridColumnConfigurationCollect:Find(class, undo) end