---@meta

---@class OutputStation: GuidObject
---@field Type HostSubType
---@field IP Network.IP8Full
---@field MAC Network.MACAddress
---@field Art-NetInterface string
---@field SendArt-NetIfIdleMaster YesNo|boolean
---@field sACNInterface string
---@field SendsACNIfIdleMaster YesNo|boolean
---@field OSCInterface string
---@field PSNInterface string
---@field InMySession YesNo|boolean
---@field HostData Container.SharedPtr<class Manet.HostDataExt>
local OutputStation = {
    ["SendArt-NetIfIdleMaster"]="Yes",
    SendsACNIfIdleMaster="Yes"
}
---@return "OutputStation"
function OutputStation:GetClass() end
---@return "OutputConfiguration"
function OutputStation:GetChildClass() end
---@generic T : OutputStation
---@param class `T`
---@return boolean
function OutputStation:IsClass(class) end
---@return OutputStationCollect
function OutputStation:Parent() end
---@param index integer
---@return OutputConfiguration
function OutputStation:Ptr(index) end
---@return OutputConfiguration[]
function OutputStation:Children() end
---@return OutputConfiguration?
function OutputStation:CurrentChild() end
---@return 31
function OutputStation:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "Type"
---@overload fun(idx: 21): "IP"
---@overload fun(idx: 22): "MAC"
---@overload fun(idx: 23): "Art-NetInterface"
---@overload fun(idx: 24): "SendArt-NetIfIdleMaster"
---@overload fun(idx: 25): "sACNInterface"
---@overload fun(idx: 26): "SendsACNIfIdleMaster"
---@overload fun(idx: 27): "OSCInterface"
---@overload fun(idx: 28): "PSNInterface"
---@overload fun(idx: 29): "InMySession"
---@overload fun(idx: 30): "HostData"
function OutputStation:PropertyName(idx) end
---@overload fun(idx: 0|1|2|29): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|24|26): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|30): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|21|22|23|25|27|28): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20): {ExportIgnore: True, EnumCollection: HostSubType, ReadOnly: False, ImportIgnore: False}
function OutputStation:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|24|26): "UInt32"
---@overload fun(idx: 7|12|17|18|23|25|27|28): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|21|22|30): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 20|29): "UInt8"
function OutputStation:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "HostData", role: nil): Container.SharedPtr<class Manet.HostDataExt>
---@overload fun(name: "Type", role: nil): HostSubType
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "IP", role: nil): Network.IP8Full
---@overload fun(name: "MAC", role: nil): Network.MACAddress
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"SendArt-NetIfIdleMaster"|"SendsACNIfIdleMaster"|"InMySession", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"Art-NetInterface"|"sACNInterface"|"OSCInterface"|"PSNInterface", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Type"|"IP"|"MAC"|"Art-NetInterface"|"SendArt-NetIfIdleMaster"|"sACNInterface"|"SendsACNIfIdleMaster"|"OSCInterface"|"PSNInterface"|"InMySession"|"HostData", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): OutputConfiguration
function OutputStation:Get(name, role) end
---@generic T : OutputConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Create(index, class, undo) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): OutputConfiguration
function OutputStation:Append(class, undo, count) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Acquire(class, undo) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
---@deprecated use "Acquire" instead
function OutputStation:Aquire(class, undo) end
---@generic T : OutputConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): OutputConfiguration
function OutputStation:Insert(index, class, undo, count) end
---@generic T : OutputConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): OutputConfiguration
function OutputStation:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "HostData", property_value: Container.SharedPtr<class Manet.HostDataExt>, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Type", property_value: HostSubType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IP", property_value: Network.IP8Full, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MAC", property_value: Network.MACAddress, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"SendArt-NetIfIdleMaster"|"SendsACNIfIdleMaster"|"InMySession", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"Art-NetInterface"|"sACNInterface"|"OSCInterface"|"PSNInterface", property_value: string, override_change_level: ChangeLevel?)
function OutputStation:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Type", property_value: UsbProductID)
---@overload fun(property_name: "DCStart", property_value: SignalOff)
---@overload fun(property_name: "SMPTEMode", property_value: SMPTEMode)
---@overload fun(property_name: "MIDITCMode", property_value: MIDITCMode)
---@overload fun(property_name: "MIDIDataMode", property_value: MIDIMode)
---@overload fun(property_name: "MIDIDataMode", property_value: MIDIMode)
---@overload fun(property_name: "MIDITCMode", property_value: MIDITCMode)
---@overload fun(property_name: "SMPTEMode", property_value: SMPTEMode)
---@overload fun(property_name: "DCStart", property_value: SignalOff)
---@overload fun(property_name: "SMPTETC"|"MIDITC", property_value: SignalSlot)
---@overload fun(property_name: "Type", property_value: UsbProductID)
---@overload fun(property_name: "MIDIOffset"|"UsbDeviceIndex"|"DmxPortDefaultDirection"|"UsbDeviceType"|"XLRPortCount"|"TimecodePortsIn"|"TimecodePortsOut"|"DCIoPorts"|"DigitalIoPorts"|"MidiCount", property_value: integer)
function OutputStation:MIDIDataMode(property_name, property_value) end