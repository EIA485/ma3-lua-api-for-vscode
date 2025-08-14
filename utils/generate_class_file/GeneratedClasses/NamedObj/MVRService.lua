---@meta

---@class MVRService: NamedObj
---@field UUID MVR.UUID
---@field Joined integer
---@field Left integer
---@field IsActive integer
---@field IsMyself integer
local MVRService = {}
---@return "MVRService"
function MVRService:GetClass() end
---@return "MVRServiceInterface"
function MVRService:GetChildClass() end
---@return MVRServiceCollect
function MVRService:Parent() end
---@param index integer
---@return MVRServiceInterface
function MVRService:Ptr(index) end
---@return MVRServiceInterface[]
function MVRService:Children() end
---@return MVRServiceInterface?
function MVRService:CurrentChild() end
---@overload fun(name: "UUID", role: nil): MVR.UUID
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Joined"|"Left"|"IsActive"|"IsMyself"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "UUID"|"Joined"|"Left"|"IsActive"|"IsMyself"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MVRServiceInterface
function MVRService:Get(name, role) end
---@generic T : MVRServiceInterface
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Create(index, class, undo) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRServiceInterface
function MVRService:Append(class, undo, count) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Acquire(class, undo) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
---@deprecated use "Acquire" instead
function MVRService:Aquire(class, undo) end
---@generic T : MVRServiceInterface
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRServiceInterface
function MVRService:Insert(index, class, undo, count) end
---@generic T : MVRServiceInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Find(class, undo) end