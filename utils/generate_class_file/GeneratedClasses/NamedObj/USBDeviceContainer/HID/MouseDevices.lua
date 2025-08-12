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
---@overload fun(index: integer, class: "UsbDeviceMouse", undo: Undo?): UsbDeviceMouse
---@overload fun(index: integer, class: nil, undo: Undo?): UsbDeviceMouse
function MouseDevices:Create(index, class, undo) end
---@overload fun(class: "UsbDeviceMouse", undo: Undo?, count: integer?): UsbDeviceMouse
---@overload fun(class: nil, undo: Undo?, count: integer?): UsbDeviceMouse
function MouseDevices:Append(class, undo, count) end
---@overload fun(class: "UsbDeviceMouse", undo: Undo?): UsbDeviceMouse
---@overload fun(class: nil, undo: Undo?): UsbDeviceMouse
function MouseDevices:Acquire(class, undo) end
---@overload fun(class: "UsbDeviceMouse", undo: Undo?): UsbDeviceMouse
---@overload fun(class: nil, undo: Undo?): UsbDeviceMouse
---@deprecated use "Acquire" instead
function MouseDevices:Aquire(class, undo) end
---@overload fun(index: integer, class: "UsbDeviceMouse", undo: Undo?, count: integer?): UsbDeviceMouse
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UsbDeviceMouse
function MouseDevices:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UsbDeviceMouse"): UsbDeviceMouse
---@overload fun(name: string, class: nil): UsbDeviceMouse
function MouseDevices:Find(name, class) end
---@overload fun(name: string, class: "UsbDeviceMouse"): UsbDeviceMouse
---@overload fun(name: string, class: nil): Object
function MouseDevices:FindRecursive(name, class) end
