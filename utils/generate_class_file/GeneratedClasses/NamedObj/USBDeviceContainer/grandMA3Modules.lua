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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SaveDevices"|"NotifyDevices"|"NotifyRemote", role: nil): boolean
---@overload fun(name: "FilterRules", role: nil): Hardware.UsbDeviceFilterRule[]
---@overload fun(name: "LastConnectionTime", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SaveDevices"|"NotifyDevices"|"NotifyRemote"|"FilterRules"|"LastConnectionTime", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UsbDeviceMA3
function grandMA3Modules:Get(name, role) end
---@overload fun(index: integer, class: "UsbDeviceMA3", undo: Undo?): UsbDeviceMA3
---@overload fun(index: integer, class: nil, undo: Undo?): UsbDeviceMA3
function grandMA3Modules:Create(index, class, undo) end
---@overload fun(class: "UsbDeviceMA3", undo: Undo?, count: integer?): UsbDeviceMA3
---@overload fun(class: nil, undo: Undo?, count: integer?): UsbDeviceMA3
function grandMA3Modules:Append(class, undo, count) end
---@overload fun(class: "UsbDeviceMA3", undo: Undo?): UsbDeviceMA3
---@overload fun(class: nil, undo: Undo?): UsbDeviceMA3
function grandMA3Modules:Acquire(class, undo) end
---@overload fun(class: "UsbDeviceMA3", undo: Undo?): UsbDeviceMA3
---@overload fun(class: nil, undo: Undo?): UsbDeviceMA3
---@deprecated use "Acquire" instead
function grandMA3Modules:Aquire(class, undo) end
---@overload fun(index: integer, class: "UsbDeviceMA3", undo: Undo?, count: integer?): UsbDeviceMA3
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UsbDeviceMA3
function grandMA3Modules:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UsbDeviceMA3"): UsbDeviceMA3
---@overload fun(name: string, class: nil): UsbDeviceMA3
function grandMA3Modules:Find(name, class) end
---@overload fun(name: string, class: "UsbDeviceMA3"): UsbDeviceMA3
---@overload fun(name: string, class: nil): Object
function grandMA3Modules:FindRecursive(name, class) end
