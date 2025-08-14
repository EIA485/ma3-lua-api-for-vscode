---@meta

---@class grandMA3Modules: USBDeviceContainer
---@field LastConnectionTime integer
local grandMA3Modules = {}
---@return "grandMA3Modules"
function grandMA3Modules:GetClass() end
---@return "UsbDeviceMA3"
function grandMA3Modules:GetChildClass() end
---@return Object
function grandMA3Modules:Parent() end
---@param index integer
---@return UsbDeviceMA3
function grandMA3Modules:Ptr(index) end
---@return UsbDeviceMA3[]
function grandMA3Modules:Children() end
---@return UsbDeviceMA3?
function grandMA3Modules:CurrentChild() end
---@overload fun(name: "FilterRules", role: nil): Hardware.UsbDeviceFilterRule[]
---@overload fun(name: "SaveDevices"|"NotifyDevices"|"NotifyRemote"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "LastConnectionTime"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "LastConnectionTime"|"SaveDevices"|"NotifyDevices"|"NotifyRemote"|"FilterRules"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UsbDeviceMA3
function grandMA3Modules:Get(name, role) end
---@generic T : UsbDeviceMA3
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UsbDeviceMA3
function grandMA3Modules:Create(index, class, undo) end
---@generic T : UsbDeviceMA3
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UsbDeviceMA3
function grandMA3Modules:Append(class, undo, count) end
---@generic T : UsbDeviceMA3
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UsbDeviceMA3
function grandMA3Modules:Acquire(class, undo) end
---@generic T : UsbDeviceMA3
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UsbDeviceMA3
---@deprecated use "Acquire" instead
function grandMA3Modules:Aquire(class, undo) end
---@generic T : UsbDeviceMA3
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UsbDeviceMA3
function grandMA3Modules:Insert(index, class, undo, count) end
---@generic T : UsbDeviceMA3
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UsbDeviceMA3
function grandMA3Modules:Find(class, undo) end