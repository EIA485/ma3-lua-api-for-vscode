---@meta

---@class MouseDevices: HID
local MouseDevices = {}
---@return "MouseDevices"
function MouseDevices:GetClass() end
---@return "UsbDeviceMouse"
function MouseDevices:GetChildClass() end
---@param index integer
---@return UsbDeviceMouse
function MouseDevices:Ptr(index) end
---@return UsbDeviceMouse[]
function MouseDevices:Children() end
---@return UsbDeviceMouse?
function MouseDevices:CurrentChild() end
---@overload fun(name: integer, role: nil): UsbDeviceMouse
function MouseDevices:Get(name, role) end
---@generic T : UsbDeviceMouse
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UsbDeviceMouse
function MouseDevices:Create(index, class, undo) end
---@generic T : UsbDeviceMouse
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UsbDeviceMouse
function MouseDevices:Append(class, undo, count) end
---@generic T : UsbDeviceMouse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UsbDeviceMouse
function MouseDevices:Acquire(class, undo) end
---@generic T : UsbDeviceMouse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UsbDeviceMouse
---@deprecated use "Acquire" instead
function MouseDevices:Aquire(class, undo) end
---@generic T : UsbDeviceMouse
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UsbDeviceMouse
function MouseDevices:Insert(index, class, undo, count) end
---@generic T : UsbDeviceMouse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UsbDeviceMouse
function MouseDevices:Find(class, undo) end