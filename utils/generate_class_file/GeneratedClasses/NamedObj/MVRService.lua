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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "UUID", role: nil): MVR.UUID
---@overload fun(name: "Joined"|"Left"|"IsActive"|"IsMyself", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UUID"|"Joined"|"Left"|"IsActive"|"IsMyself", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MVRServiceInterface
function MVRService:Get(name, role) end
---@overload fun(index: integer, class: "MVRServiceInterface", undo: Undo?): MVRServiceInterface
---@overload fun(index: integer, class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Create(index, class, undo) end
---@overload fun(class: "MVRServiceInterface", undo: Undo?, count: integer?): MVRServiceInterface
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRServiceInterface
function MVRService:Append(class, undo, count) end
---@overload fun(class: "MVRServiceInterface", undo: Undo?): MVRServiceInterface
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
function MVRService:Acquire(class, undo) end
---@overload fun(class: "MVRServiceInterface", undo: Undo?): MVRServiceInterface
---@overload fun(class: nil, undo: Undo?): MVRServiceInterface
---@deprecated use "Acquire" instead
function MVRService:Aquire(class, undo) end
---@overload fun(index: integer, class: "MVRServiceInterface", undo: Undo?, count: integer?): MVRServiceInterface
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRServiceInterface
function MVRService:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MVRServiceInterface"): MVRServiceInterface
---@overload fun(name: string, class: nil): MVRServiceInterface
function MVRService:Find(name, class) end
---@overload fun(name: string, class: "MVRServiceInterface"): MVRServiceInterface
---@overload fun(name: string, class: nil): Object
function MVRService:FindRecursive(name, class) end
