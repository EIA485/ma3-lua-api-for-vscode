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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"IgnoreEnforceUniqueChildNames", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IgnoreEnforceUniqueChildNames", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Model
function Models:Get(name, role) end
---@overload fun(index: integer, class: "Model", undo: Undo?): Model
---@overload fun(index: integer, class: nil, undo: Undo?): Model
function Models:Create(index, class, undo) end
---@overload fun(class: "Model", undo: Undo?, count: integer?): Model
---@overload fun(class: nil, undo: Undo?, count: integer?): Model
function Models:Append(class, undo, count) end
---@overload fun(class: "Model", undo: Undo?): Model
---@overload fun(class: nil, undo: Undo?): Model
function Models:Acquire(class, undo) end
---@overload fun(class: "Model", undo: Undo?): Model
---@overload fun(class: nil, undo: Undo?): Model
---@deprecated use "Acquire" instead
function Models:Aquire(class, undo) end
---@overload fun(index: integer, class: "Model", undo: Undo?, count: integer?): Model
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Model
function Models:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Model"): Model
---@overload fun(name: string, class: nil): Model
function Models:Find(name, class) end
---@overload fun(name: string, class: "Model"): Model
---@overload fun(name: string, class: nil): Object
function Models:FindRecursive(name, class) end
