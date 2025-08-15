---@meta

---@class grandMA3Modules: USBDeviceContainer
---@field LastConnectionTime integer
local grandMA3Modules = {}
---@return "grandMA3Modules"
function grandMA3Modules:GetClass() end
---@return "UsbDeviceMA3"
function grandMA3Modules:GetChildClass() end
---@generic T : grandMA3Modules
---@param class `T`
---@return boolean
function grandMA3Modules:IsClass(class) end
---@return Object
function grandMA3Modules:Parent() end
---@param index integer
---@return UsbDeviceMA3
function grandMA3Modules:Ptr(index) end
---@return UsbDeviceMA3[]
function grandMA3Modules:Children() end
---@return UsbDeviceMA3?
function grandMA3Modules:CurrentChild() end
---@return 20
function grandMA3Modules:PropertyCount() end
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
---@overload fun(idx: 15): "SaveDevices"
---@overload fun(idx: 16): "NotifyDevices"
---@overload fun(idx: 17): "NotifyRemote"
---@overload fun(idx: 18): "FilterRules"
---@overload fun(idx: 19): "LastConnectionTime"
function grandMA3Modules:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15|16|17): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|18|19): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function grandMA3Modules:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|15|16|17): "Bool"
---@overload fun(idx: 12|19): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 18): "Custom"
function grandMA3Modules:PropertyType(idx) end
---@overload fun(name: "FilterRules", role: nil): Hardware.UsbDeviceFilterRule[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"SaveDevices"|"NotifyDevices"|"NotifyRemote", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"LastConnectionTime", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SaveDevices"|"NotifyDevices"|"NotifyRemote"|"FilterRules"|"LastConnectionTime", role: Enums.Roles): string
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
---@overload fun(property_name: "FilterRules", property_value: Hardware.UsbDeviceFilterRule[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"SaveDevices"|"NotifyDevices"|"NotifyRemote", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"LastConnectionTime", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function grandMA3Modules:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "WingID", property_value: WingID)
---@overload fun(property_name: "IsInWholeDevCert", property_value: boolean)
---@overload fun(property_name: "Extension", property_value: YesNo|boolean)
---@overload fun(property_name: "WingID", property_value: WingID)
---@overload fun(property_name: "Extension", property_value: YesNo|boolean)
---@overload fun(property_name: "IsInWholeDevCert", property_value: boolean)
---@overload fun(property_name: "DeviceTime"|"OutputConfigIndex"|"DroppedPackets", property_value: integer)
---@overload fun(property_name: "SerialNumber"|"DeviceType", property_value: string)
function grandMA3Modules:Extension(property_name, property_value) end