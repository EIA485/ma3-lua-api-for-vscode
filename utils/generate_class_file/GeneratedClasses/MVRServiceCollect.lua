---@meta

---@class MVRServiceCollect: Object
local MVRServiceCollect = {}
---@return "MVRServiceCollect"
function MVRServiceCollect:GetClass() end
---@return "MVRService"
function MVRServiceCollect:GetChildClass() end
---@generic T : MVRServiceCollect
---@param class `T`
---@return boolean
function MVRServiceCollect:IsClass(class) end
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
---@overload fun(property_name: "UUID", property_value: MVR.UUID)
---@overload fun(property_name: "UUID", property_value: MVR.UUID)
---@overload fun(property_name: "Joined"|"Left"|"IsMyself"|"IsActive", property_value: Yes|true)
function MVRServiceCollect:SetChildren(property_name, property_value) end