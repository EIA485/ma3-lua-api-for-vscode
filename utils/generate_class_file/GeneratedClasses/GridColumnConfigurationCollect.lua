---@meta

---@class GridColumnConfigurationCollect: Object
local GridColumnConfigurationCollect = {}
---@return "GridColumnConfigurationCollect"
function GridColumnConfigurationCollect:GetClass() end
---@return "GridColumnConfiguration"
function GridColumnConfigurationCollect:GetChildClass() end
---@generic T : GridColumnConfigurationCollect
---@param class `T`
---@return boolean
function GridColumnConfigurationCollect:IsClass(class) end
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
---@overload fun(property_name: "InitialWhiteFilter", property_value: integer)
---@overload fun(property_name: "DefaultColumns", property_value: Property<Container.HashFlatSet<GridLine, Container.MemPtrFlatHashPolicies<GridLine, 0>>>.`vftable')
---@overload fun(property_name: "DefaultColumns", property_value: Property<Container.HashFlatSet<GridLine, Container.MemPtrFlatHashPolicies<GridLine, 0>>>.`vftable')
---@overload fun(property_name: "AllColumnsVisible"|"AllColumnsInvisible"|"AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting", property_value: YesNo|boolean)
---@overload fun(property_name: "InitialWhiteFilter", property_value: integer)
function GridColumnConfigurationCollect:DefaultColumns(property_name, property_value) end