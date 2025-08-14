---@meta

---@class HID: USBDeviceContainer
local HID = {}
---@return "HID"
function HID:GetClass() end
---@return "USBDeviceHID"
function HID:GetChildClass() end
---@param index integer
---@return USBDeviceHID
function HID:Ptr(index) end
---@return USBDeviceHID[]
function HID:Children() end
---@return USBDeviceHID?
function HID:CurrentChild() end
---@overload fun(name: integer, role: nil): USBDeviceHID
function HID:Get(name, role) end
---@overload fun(index: integer, class: "USBDeviceHID", undo: Undo?): USBDeviceHID
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceHID
function HID:Create(index, class, undo) end
---@overload fun(class: "USBDeviceHID", undo: Undo?, count: integer?): USBDeviceHID
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceHID
function HID:Append(class, undo, count) end
---@overload fun(class: "USBDeviceHID", undo: Undo?): USBDeviceHID
---@overload fun(class: nil, undo: Undo?): USBDeviceHID
function HID:Acquire(class, undo) end
---@overload fun(class: "USBDeviceHID", undo: Undo?): USBDeviceHID
---@overload fun(class: nil, undo: Undo?): USBDeviceHID
---@deprecated use "Acquire" instead
function HID:Aquire(class, undo) end
---@overload fun(index: integer, class: "USBDeviceHID", undo: Undo?, count: integer?): USBDeviceHID
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceHID
function HID:Insert(index, class, undo, count) end
---@overload fun(class: "USBDeviceHID", undo: Undo?): USBDeviceHID
---@overload fun(class: nil, undo: Undo?): USBDeviceHID
function HID:Find(class, undo) end