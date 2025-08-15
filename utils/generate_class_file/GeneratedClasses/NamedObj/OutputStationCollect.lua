---@meta

---@class OutputStationCollect: NamedObj
---@field DevicesinSession integer
local OutputStationCollect = {}
---@return "OutputStationCollect"
function OutputStationCollect:GetClass() end
---@return "OutputStation"
function OutputStationCollect:GetChildClass() end
---@generic T : OutputStationCollect
---@param class `T`
---@return boolean
function OutputStationCollect:IsClass(class) end
---@return OutputStations
function OutputStationCollect:Parent() end
---@param index integer
---@return OutputStation
function OutputStationCollect:Ptr(index) end
---@return OutputStation[]
function OutputStationCollect:Children() end
---@return OutputStation?
function OutputStationCollect:CurrentChild() end
---@return 16
function OutputStationCollect:PropertyCount() end
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
---@overload fun(idx: 15): "DevicesinSession"
function OutputStationCollect:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function OutputStationCollect:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "UInt8"
function OutputStationCollect:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"DevicesinSession", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DevicesinSession", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputStation
function OutputStationCollect:Get(name, role) end
---@generic T : OutputStation
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Create(index, class, undo) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputStation
function OutputStationCollect:Append(class, undo, count) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Acquire(class, undo) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStation
---@deprecated use "Acquire" instead
function OutputStationCollect:Aquire(class, undo) end
---@generic T : OutputStation
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputStation
function OutputStationCollect:Insert(index, class, undo, count) end
---@generic T : OutputStation
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputStation
function OutputStationCollect:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"DevicesinSession", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function OutputStationCollect:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "MAC", property_value: Network.MACAddress)
---@overload fun(property_name: "IP", property_value: Network.IP8Full)
---@overload fun(property_name: "HostData", property_value: Container.SharedPtr<class Manet.HostDataExt>)
---@overload fun(property_name: "Type", property_value: HostSubType)
---@overload fun(property_name: "HostData", property_value: Container.SharedPtr<class Manet.HostDataExt>)
---@overload fun(property_name: "Type", property_value: HostSubType)
---@overload fun(property_name: "IP", property_value: Network.IP8Full)
---@overload fun(property_name: "MAC", property_value: Network.MACAddress)
---@overload fun(property_name: "SendsACNIfIdleMaster"|"InMySession"|"SendArt-NetIfIdleMaster", property_value: YesNo|boolean)
---@overload fun(property_name: "Art-NetInterface"|"PSNInterface"|"sACNInterface"|"OSCInterface", property_value: string)
function OutputStationCollect:Type(property_name, property_value) end