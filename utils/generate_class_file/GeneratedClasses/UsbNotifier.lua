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
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "MotorPredictP"|"MotorPredictI"|"MotorPredictD", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "MotorPredictP"|"MotorPredictI"|"MotorPredictD"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): USBDeviceContainer
function UsbNotifier:Get(name, role) end
---@generic T : USBDeviceContainer
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): USBDeviceContainer
function UsbNotifier:Create(index, class, undo) end
---@generic T : USBDeviceContainer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDeviceContainer
function UsbNotifier:Append(class, undo, count) end
---@generic T : USBDeviceContainer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceContainer
function UsbNotifier:Acquire(class, undo) end
---@generic T : USBDeviceContainer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceContainer
---@deprecated use "Acquire" instead
function UsbNotifier:Aquire(class, undo) end
---@generic T : USBDeviceContainer
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDeviceContainer
function UsbNotifier:Insert(index, class, undo, count) end
---@generic T : USBDeviceContainer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): USBDeviceContainer
function UsbNotifier:Find(class, undo) end