---@meta

---@class USBDeviceContainer: NamedObj
---@field SaveDevices boolean
---@field NotifyDevices boolean
---@field NotifyRemote boolean
---@field FilterRules Hardware.UsbDeviceFilterRule[]
local USBDeviceContainer = {
    SaveDevices="No",
    NotifyDevices="No",
    NotifyRemote="Yes"
}
---@return "USBDeviceContainer"
function USBDeviceContainer:GetClass() end
---@return "USBDevice"
function USBDeviceContainer:GetChildClass() end
---@return UsbNotifier
function USBDeviceContainer:Parent() end
---@param index integer
---@return USBDevice
function USBDeviceContainer:Ptr(index) end
---@return USBDevice[]
function USBDeviceContainer:Children() end
---@return USBDevice?
function USBDeviceContainer:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SaveDevices"|"NotifyDevices"|"NotifyRemote", role: nil): boolean
---@overload fun(name: "FilterRules", role: nil): Hardware.UsbDeviceFilterRule[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SaveDevices"|"NotifyDevices"|"NotifyRemote"|"FilterRules", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): USBDevice
function USBDeviceContainer:Get(name, role) end
---@overload fun(index: integer, class: "USBDevice", undo: Undo?): USBDevice
---@overload fun(index: integer, class: nil, undo: Undo?): USBDevice
function USBDeviceContainer:Create(index, class, undo) end
---@overload fun(class: "USBDevice", undo: Undo?, count: integer?): USBDevice
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDevice
function USBDeviceContainer:Append(class, undo, count) end
---@overload fun(class: "USBDevice", undo: Undo?): USBDevice
---@overload fun(class: nil, undo: Undo?): USBDevice
function USBDeviceContainer:Acquire(class, undo) end
---@overload fun(class: "USBDevice", undo: Undo?): USBDevice
---@overload fun(class: nil, undo: Undo?): USBDevice
---@deprecated use "Acquire" instead
function USBDeviceContainer:Aquire(class, undo) end
---@overload fun(index: integer, class: "USBDevice", undo: Undo?, count: integer?): USBDevice
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDevice
function USBDeviceContainer:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "USBDevice"): USBDevice
---@overload fun(name: string, class: nil): USBDevice
function USBDeviceContainer:Find(name, class) end
---@overload fun(name: string, class: "USBDevice"): USBDevice
---@overload fun(name: string, class: nil): Object
function USBDeviceContainer:FindRecursive(name, class) end
