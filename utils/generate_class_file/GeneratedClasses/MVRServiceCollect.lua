---@meta

---@class MVRServiceCollect: Object
local MVRServiceCollect = {}
---@return "MVRServiceCollect"
function MVRServiceCollect:GetClass() end
---@return "MVRService"
function MVRServiceCollect:GetChildClass() end
---@return TempMVRExchange
function MVRServiceCollect:Parent() end
---@param index integer
---@return MVRService
function MVRServiceCollect:Ptr(index) end
---@return MVRService[]
function MVRServiceCollect:Children() end
---@return MVRService?
function MVRServiceCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): MVRService
function MVRServiceCollect:Get(name, role) end
---@overload fun(index: integer, class: "MVRService", undo: Undo?): MVRService
---@overload fun(index: integer, class: nil, undo: Undo?): MVRService
function MVRServiceCollect:Create(index, class, undo) end
---@overload fun(class: "MVRService", undo: Undo?, count: integer?): MVRService
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRService
function MVRServiceCollect:Append(class, undo, count) end
---@overload fun(class: "MVRService", undo: Undo?): MVRService
---@overload fun(class: nil, undo: Undo?): MVRService
function MVRServiceCollect:Acquire(class, undo) end
---@overload fun(class: "MVRService", undo: Undo?): MVRService
---@overload fun(class: nil, undo: Undo?): MVRService
---@deprecated use "Acquire" instead
function MVRServiceCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "MVRService", undo: Undo?, count: integer?): MVRService
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRService
function MVRServiceCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MVRService"): MVRService
---@overload fun(name: string, class: nil): MVRService
function MVRServiceCollect:Find(name, class) end
---@overload fun(name: string, class: "MVRService"): MVRService
---@overload fun(name: string, class: nil): Object
function MVRServiceCollect:FindRecursive(name, class) end
