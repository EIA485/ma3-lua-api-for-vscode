---@meta

---@class Notifications: Object Ask Andrii
local Notifications = {}
---@return "Notifications"
function Notifications:GetClass() end
---@return "RDMAbsentNotification"
function Notifications:GetChildClass() end
---@generic T : Notifications
---@param class `T`
---@return boolean
function Notifications:IsClass(class) end
---@return RDMFixtureType
function Notifications:Parent() end
---@param index integer
---@return RDMAbsentNotification
function Notifications:Ptr(index) end
---@return RDMAbsentNotification[]
function Notifications:Children() end
---@return RDMAbsentNotification?
function Notifications:CurrentChild() end
---@overload fun(name: integer, role: nil): RDMAbsentNotification
function Notifications:Get(name, role) end
---@generic T : RDMAbsentNotification
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RDMAbsentNotification
function Notifications:Create(index, class, undo) end
---@generic T : RDMAbsentNotification
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMAbsentNotification
function Notifications:Append(class, undo, count) end
---@generic T : RDMAbsentNotification
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMAbsentNotification
function Notifications:Acquire(class, undo) end
---@generic T : RDMAbsentNotification
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMAbsentNotification
---@deprecated use "Acquire" instead
function Notifications:Aquire(class, undo) end
---@generic T : RDMAbsentNotification
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMAbsentNotification
function Notifications:Insert(index, class, undo, count) end
---@generic T : RDMAbsentNotification
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMAbsentNotification
function Notifications:Find(class, undo) end
---@generic T : RDMAbsentNotification
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Notifications:FindRecursive(name, class) end
---@overload fun(property_name: "PID", property_value: RDMPID)
---@overload fun(property_name: "SensorOffset", property_value: integer)
---@overload fun(property_name: "PID", property_value: RDMPID)
---@overload fun(property_name: "SensorOffset", property_value: integer)
function Notifications:SensorOffset(property_name, property_value) end
---@overload fun(property_name: "PID", property_value: RDMPID)
---@overload fun(property_name: "SensorOffset", property_value: integer)
---@overload fun(property_name: "PID", property_value: RDMPID)
---@overload fun(property_name: "SensorOffset", property_value: integer)
function Notifications:SensorOffset(property_name, property_value) end
---@overload fun(property_name: "PID", property_value: RDMPID)
---@overload fun(property_name: "SensorOffset", property_value: integer)
function Notifications:SetChildrenRecursive(property_name, property_value) end