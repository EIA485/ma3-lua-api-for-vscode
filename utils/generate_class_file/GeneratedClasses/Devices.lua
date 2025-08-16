---@meta

---@class Devices: Object
local Devices = {}
---@return "Devices"
function Devices:GetClass() end
---@return "Device"
function Devices:GetChildClass() end
---@generic T : Devices
---@param class `T`
---@return boolean
function Devices:IsClass(class) end
---@return Pult
function Devices:Parent() end
---@param index integer
---@return Device
function Devices:Ptr(index) end
---@return Device[]
function Devices:Children() end
---@return Device?
function Devices:CurrentChild() end
---@overload fun(name: integer, role: nil): Device
function Devices:Get(name, role) end
---@generic T : GestureManager|Keyboard|Touch
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Device", undo: Undo?): Device
---@overload fun(index: integer, class: nil, undo: Undo?): Device
function Devices:Create(index, class, undo) end
---@generic T : GestureManager|Keyboard|Touch
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Device", undo: Undo?, count: integer?): Device
---@overload fun(class: nil, undo: Undo?, count: integer?): Device
function Devices:Append(class, undo, count) end
---@generic T : GestureManager|Keyboard|Touch
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Device", undo: Undo?): Device
---@overload fun(class: nil, undo: Undo?): Device
function Devices:Acquire(class, undo) end
---@generic T : GestureManager|Keyboard|Touch
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Device", undo: Undo?): Device
---@overload fun(class: nil, undo: Undo?): Device
---@deprecated use "Acquire" instead
function Devices:Aquire(class, undo) end
---@generic T : GestureManager|Keyboard|Touch
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Device", undo: Undo?, count: integer?): Device
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Device
function Devices:Insert(index, class, undo, count) end
---@generic T : GestureManager|Keyboard|Touch
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Device", undo: Undo?): Device
---@overload fun(class: nil, undo: Undo?): Device
function Devices:Find(class, undo) end
function Devices:SetChildren(property_name, property_value) end