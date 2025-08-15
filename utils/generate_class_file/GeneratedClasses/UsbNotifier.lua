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
---@generic T : UsbNotifier
---@param class `T`
---@return boolean
function UsbNotifier:IsClass(class) end
---@return Root
function UsbNotifier:Parent() end
---@param index integer
---@return USBDeviceContainer
function UsbNotifier:Ptr(index) end
---@return USBDeviceContainer[]
function UsbNotifier:Children() end
---@return USBDeviceContainer?
function UsbNotifier:CurrentChild() end
---@return 18
function UsbNotifier:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "MotorPredictP"
---@overload fun(idx: 16): "MotorPredictI"
---@overload fun(idx: 17): "MotorPredictD"
function UsbNotifier:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|17): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function UsbNotifier:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|16|17): "Double"
function UsbNotifier:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "MotorPredictP"|"MotorPredictI"|"MotorPredictD", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"MotorPredictP"|"MotorPredictI"|"MotorPredictD", role: Enums.Roles): string
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
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MotorPredictP"|"MotorPredictI"|"MotorPredictD", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function UsbNotifier:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "FilterRules", property_value: Hardware.UsbDeviceFilterRule[])
---@overload fun(property_name: "LastConnectionTime", property_value: integer)
---@overload fun(property_name: "FilterRules", property_value: Hardware.UsbDeviceFilterRule[])
---@overload fun(property_name: "SaveDevices"|"NotifyRemote"|"NotifyDevices", property_value: YesNo|boolean)
---@overload fun(property_name: "LastConnectionTime", property_value: integer)
function UsbNotifier:LastConnectionTime(property_name, property_value) end