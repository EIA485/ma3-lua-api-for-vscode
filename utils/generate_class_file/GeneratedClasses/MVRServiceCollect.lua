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
---@generic T : MVRService
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MVRService
function MVRServiceCollect:Create(index, class, undo) end
---@generic T : MVRService
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRService
function MVRServiceCollect:Append(class, undo, count) end
---@generic T : MVRService
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRService
function MVRServiceCollect:Acquire(class, undo) end
---@generic T : MVRService
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRService
---@deprecated use "Acquire" instead
function MVRServiceCollect:Aquire(class, undo) end
---@generic T : MVRService
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRService
function MVRServiceCollect:Insert(index, class, undo, count) end
---@generic T : MVRService
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MVRService
function MVRServiceCollect:Find(class, undo) end