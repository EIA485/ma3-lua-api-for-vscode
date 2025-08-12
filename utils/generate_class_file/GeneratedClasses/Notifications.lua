---@meta

---@class Notifications: Object Ask Andrii
local Notifications = {}
---@return "Notifications"
function Notifications:GetClass() end
---@return "RDMAbsentNotification"
function Notifications:GetChildClass() end
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
---@overload fun(index: integer, class: "RDMAbsentNotification", undo: Undo?): RDMAbsentNotification
---@overload fun(index: integer, class: "RDMSensorNotification", undo: Undo?): RDMSensorNotification
---@overload fun(index: integer, class: "RDMParameterNotification", undo: Undo?): RDMParameterNotification
---@overload fun(index: integer, class: nil, undo: Undo?): RDMAbsentNotification
function Notifications:Create(index, class, undo) end
---@overload fun(class: "RDMAbsentNotification", undo: Undo?, count: integer?): RDMAbsentNotification
---@overload fun(class: "RDMSensorNotification", undo: Undo?, count: integer?): RDMSensorNotification
---@overload fun(class: "RDMParameterNotification", undo: Undo?, count: integer?): RDMParameterNotification
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMAbsentNotification
function Notifications:Append(class, undo, count) end
---@overload fun(class: "RDMAbsentNotification", undo: Undo?): RDMAbsentNotification
---@overload fun(class: "RDMSensorNotification", undo: Undo?): RDMSensorNotification
---@overload fun(class: "RDMParameterNotification", undo: Undo?): RDMParameterNotification
---@overload fun(class: nil, undo: Undo?): RDMAbsentNotification
function Notifications:Acquire(class, undo) end
---@overload fun(class: "RDMAbsentNotification", undo: Undo?): RDMAbsentNotification
---@overload fun(class: "RDMSensorNotification", undo: Undo?): RDMSensorNotification
---@overload fun(class: "RDMParameterNotification", undo: Undo?): RDMParameterNotification
---@overload fun(class: nil, undo: Undo?): RDMAbsentNotification
---@deprecated use "Acquire" instead
function Notifications:Aquire(class, undo) end
---@overload fun(index: integer, class: "RDMAbsentNotification", undo: Undo?, count: integer?): RDMAbsentNotification
---@overload fun(index: integer, class: "RDMSensorNotification", undo: Undo?, count: integer?): RDMSensorNotification
---@overload fun(index: integer, class: "RDMParameterNotification", undo: Undo?, count: integer?): RDMParameterNotification
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMAbsentNotification
function Notifications:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RDMAbsentNotification"): RDMAbsentNotification
---@overload fun(name: string, class: "RDMSensorNotification"): RDMSensorNotification
---@overload fun(name: string, class: "RDMParameterNotification"): RDMParameterNotification
---@overload fun(name: string, class: nil): RDMAbsentNotification
function Notifications:Find(name, class) end
---@overload fun(name: string, class: "RDMAbsentNotification"): RDMAbsentNotification
---@overload fun(name: string, class: "RDMSensorNotification"): RDMSensorNotification
---@overload fun(name: string, class: "RDMParameterNotification"): RDMParameterNotification
---@overload fun(name: string, class: nil): Object
function Notifications:FindRecursive(name, class) end
