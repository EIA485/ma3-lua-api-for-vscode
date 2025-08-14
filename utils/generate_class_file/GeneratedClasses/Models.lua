---@meta

---@class Models: Object Container for all 3D models of a fixture type.
---@field IgnoreEnforceUniqueChildNames integer
local Models = {}
---@return "Models"
function Models:GetClass() end
---@return "Model"
function Models:GetChildClass() end
---@return FixtureType
function Models:Parent() end
---@param index integer
---@return Model
function Models:Ptr(index) end
---@return Model[]
function Models:Children() end
---@return Model?
function Models:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreEnforceUniqueChildNames"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreEnforceUniqueChildNames"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Model
function Models:Get(name, role) end
---@generic T : Model
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Model
function Models:Create(index, class, undo) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Model
function Models:Append(class, undo, count) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Model
function Models:Acquire(class, undo) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Model
---@deprecated use "Acquire" instead
function Models:Aquire(class, undo) end
---@generic T : Model
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Model
function Models:Insert(index, class, undo, count) end
---@generic T : Model
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Model
function Models:Find(class, undo) end