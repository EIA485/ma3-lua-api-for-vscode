---@meta

---@class TouchDevices: HID
local TouchDevices = {}
---@return "TouchDevices"
function TouchDevices:GetClass() end
---@return "USBDeviceTouch"
function TouchDevices:GetChildClass() end
---@param index integer
---@return USBDeviceTouch
function TouchDevices:Ptr(index) end
---@return USBDeviceTouch[]
function TouchDevices:Children() end
---@return USBDeviceTouch?
function TouchDevices:CurrentChild() end
---@overload fun(name: integer, role: nil): USBDeviceTouch
function TouchDevices:Get(name, role) end
---@overload fun(index: integer, class: "USBDeviceTouch", undo: Undo?): USBDeviceTouch
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceTouch
function TouchDevices:Create(index, class, undo) end
---@overload fun(class: "USBDeviceTouch", undo: Undo?, count: integer?): USBDeviceTouch
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceTouch
function TouchDevices:Append(class, undo, count) end
---@overload fun(class: "USBDeviceTouch", undo: Undo?): USBDeviceTouch
---@overload fun(class: nil, undo: Undo?): USBDeviceTouch
function TouchDevices:Acquire(class, undo) end
---@overload fun(class: "USBDeviceTouch", undo: Undo?): USBDeviceTouch
---@overload fun(class: nil, undo: Undo?): USBDeviceTouch
---@deprecated use "Acquire" instead
function TouchDevices:Aquire(class, undo) end
---@overload fun(index: integer, class: "USBDeviceTouch", undo: Undo?, count: integer?): USBDeviceTouch
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceTouch
function TouchDevices:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "USBDeviceTouch"): USBDeviceTouch
---@overload fun(name: string, class: nil): USBDeviceTouch
function TouchDevices:Find(name, class) end
---@overload fun(name: string, class: "USBDeviceTouch"): USBDeviceTouch
---@overload fun(name: string, class: nil): Object
function TouchDevices:FindRecursive(name, class) end
