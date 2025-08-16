---@meta

---@class TouchDevices: HID
local TouchDevices = {}
---@return "TouchDevices"
function TouchDevices:GetClass() end
---@return "USBDeviceTouch"
function TouchDevices:GetChildClass() end
---@generic T : TouchDevices
---@param class `T`
---@return boolean
function TouchDevices:IsClass(class) end
---@param index integer
---@return USBDeviceTouch
function TouchDevices:Ptr(index) end
---@return USBDeviceTouch[]
function TouchDevices:Children() end
---@return USBDeviceTouch?
function TouchDevices:CurrentChild() end
---@overload fun(name: integer, role: nil): USBDeviceTouch
function TouchDevices:Get(name, role) end
---@generic T : USBDeviceTouch
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceTouch
function TouchDevices:Create(index, class, undo) end
---@generic T : USBDeviceTouch
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceTouch
function TouchDevices:Append(class, undo, count) end
---@generic T : USBDeviceTouch
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceTouch
function TouchDevices:Acquire(class, undo) end
---@generic T : USBDeviceTouch
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceTouch
---@deprecated use "Acquire" instead
function TouchDevices:Aquire(class, undo) end
---@generic T : USBDeviceTouch
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceTouch
function TouchDevices:Insert(index, class, undo, count) end
---@generic T : USBDeviceTouch
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceTouch
function TouchDevices:Find(class, undo) end
---@overload fun(property_name: "UsbAddr"|"MonitorId"|"DevNode", property_value: string)
function TouchDevices:SetChildren(property_name, property_value) end