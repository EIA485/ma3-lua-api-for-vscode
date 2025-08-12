---@meta

---@class UsbNotifier: Object
---@field MotorPredictP number
---@field MotorPredictI number
---@field MotorPredictD number
local UsbNotifier = {
    MotorPredictP="0.18",
    MotorPredictI="0.0006",
    MotorPredictD="0.14"
}
---@return "UsbNotifier"
function UsbNotifier:GetClass() end
---@return "USBDeviceContainer"
function UsbNotifier:GetChildClass() end
---@return Root
function UsbNotifier:Parent() end
---@param index integer
---@return USBDeviceContainer
function UsbNotifier:Ptr(index) end
---@return USBDeviceContainer[]
function UsbNotifier:Children() end
---@return USBDeviceContainer?
function UsbNotifier:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "MotorPredictP"|"MotorPredictI"|"MotorPredictD", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"MotorPredictP"|"MotorPredictI"|"MotorPredictD", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): USBDeviceContainer
function UsbNotifier:Get(name, role) end
---@overload fun(index: integer, class: "USBDeviceContainer", undo: Undo?): USBDeviceContainer
---@overload fun(index: integer, class: "Unknown", undo: Undo?): Unknown
---@overload fun(index: integer, class: "grandMA3Modules", undo: Undo?): grandMA3Modules
---@overload fun(index: integer, class: "Storage", undo: Undo?): Storage
---@overload fun(index: integer, class: "HID", undo: Undo?): HID
---@overload fun(index: integer, class: "MouseDevices", undo: Undo?): MouseDevices
---@overload fun(index: integer, class: "TouchDevices", undo: Undo?): TouchDevices
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceContainer
function UsbNotifier:Create(index, class, undo) end
---@overload fun(class: "USBDeviceContainer", undo: Undo?, count: integer?): USBDeviceContainer
---@overload fun(class: "Unknown", undo: Undo?, count: integer?): Unknown
---@overload fun(class: "grandMA3Modules", undo: Undo?, count: integer?): grandMA3Modules
---@overload fun(class: "Storage", undo: Undo?, count: integer?): Storage
---@overload fun(class: "HID", undo: Undo?, count: integer?): HID
---@overload fun(class: "MouseDevices", undo: Undo?, count: integer?): MouseDevices
---@overload fun(class: "TouchDevices", undo: Undo?, count: integer?): TouchDevices
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceContainer
function UsbNotifier:Append(class, undo, count) end
---@overload fun(class: "USBDeviceContainer", undo: Undo?): USBDeviceContainer
---@overload fun(class: "Unknown", undo: Undo?): Unknown
---@overload fun(class: "grandMA3Modules", undo: Undo?): grandMA3Modules
---@overload fun(class: "Storage", undo: Undo?): Storage
---@overload fun(class: "HID", undo: Undo?): HID
---@overload fun(class: "MouseDevices", undo: Undo?): MouseDevices
---@overload fun(class: "TouchDevices", undo: Undo?): TouchDevices
---@overload fun(class: nil, undo: Undo?): USBDeviceContainer
function UsbNotifier:Acquire(class, undo) end
---@overload fun(class: "USBDeviceContainer", undo: Undo?): USBDeviceContainer
---@overload fun(class: "Unknown", undo: Undo?): Unknown
---@overload fun(class: "grandMA3Modules", undo: Undo?): grandMA3Modules
---@overload fun(class: "Storage", undo: Undo?): Storage
---@overload fun(class: "HID", undo: Undo?): HID
---@overload fun(class: "MouseDevices", undo: Undo?): MouseDevices
---@overload fun(class: "TouchDevices", undo: Undo?): TouchDevices
---@overload fun(class: nil, undo: Undo?): USBDeviceContainer
---@deprecated use "Acquire" instead
function UsbNotifier:Aquire(class, undo) end
---@overload fun(index: integer, class: "USBDeviceContainer", undo: Undo?, count: integer?): USBDeviceContainer
---@overload fun(index: integer, class: "Unknown", undo: Undo?, count: integer?): Unknown
---@overload fun(index: integer, class: "grandMA3Modules", undo: Undo?, count: integer?): grandMA3Modules
---@overload fun(index: integer, class: "Storage", undo: Undo?, count: integer?): Storage
---@overload fun(index: integer, class: "HID", undo: Undo?, count: integer?): HID
---@overload fun(index: integer, class: "MouseDevices", undo: Undo?, count: integer?): MouseDevices
---@overload fun(index: integer, class: "TouchDevices", undo: Undo?, count: integer?): TouchDevices
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceContainer
function UsbNotifier:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "USBDeviceContainer"): USBDeviceContainer
---@overload fun(name: string, class: "Unknown"): Unknown
---@overload fun(name: string, class: "grandMA3Modules"): grandMA3Modules
---@overload fun(name: string, class: "Storage"): Storage
---@overload fun(name: string, class: "HID"): HID
---@overload fun(name: string, class: "MouseDevices"): MouseDevices
---@overload fun(name: string, class: "TouchDevices"): TouchDevices
---@overload fun(name: string, class: nil): USBDeviceContainer
function UsbNotifier:Find(name, class) end
---@overload fun(name: string, class: "USBDeviceContainer"): USBDeviceContainer
---@overload fun(name: string, class: "Unknown"): Unknown
---@overload fun(name: string, class: "grandMA3Modules"): grandMA3Modules
---@overload fun(name: string, class: "Storage"): Storage
---@overload fun(name: string, class: "HID"): HID
---@overload fun(name: string, class: "MouseDevices"): MouseDevices
---@overload fun(name: string, class: "TouchDevices"): TouchDevices
---@overload fun(name: string, class: nil): Object
function UsbNotifier:FindRecursive(name, class) end
