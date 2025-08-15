---@meta

---@class RDMFixture: NamedObj RDM fixture
---@field UID integer RDM Device UID
---@field Manufacturer RDMManufacturerId
---@field RDMFixtureType RDMFixtureType
---@field DMXPersonality integer
---@field DMXStart integer
---@field Identify Yes|true
---@field PanInvert Yes|true
---@field TiltInvert Yes|true
---@field DeviceHours integer
---@field DisplayInvert RDMPidValueDisplayInvert
---@field DisplayLevel integer
---@field LampState RDMLampState
---@field LampHours integer
---@field LampStrikes integer
---@field LampOnMode RDMLampOnMode
---@field DevicePowerCycles integer
---@field PanTiltSwap Yes|true
---@field PowerState RDMPowerStateDefines
---@field ProxiedDevices integer
---@field ResetDevice RDMPidValueResetDevice
---@field FactoryDefaults Yes|true
---@field Fixture SubFixture
---@field Active YesNo|boolean
local RDMFixture = {
    UID="0",
    Manufacturer="ESTA",
    Identify="-",
    Active="Yes"
}
---@return "RDMFixture"
function RDMFixture:GetClass() end
---@return "FakeValueSensor"
function RDMFixture:GetChildClass() end
---@generic T : RDMFixture
---@param class `T`
---@return boolean
function RDMFixture:IsClass(class) end
---@return RDMPort
function RDMFixture:Parent() end
---@param index integer
---@return FakeValueSensor
function RDMFixture:Ptr(index) end
---@return FakeValueSensor[]
function RDMFixture:Children() end
---@return FakeValueSensor?
function RDMFixture:CurrentChild() end
---@return 38
function RDMFixture:PropertyCount() end
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
---@overload fun(idx: 15): "UID"
---@overload fun(idx: 16): "Manufacturer"
---@overload fun(idx: 17): "RDMFixtureType"
---@overload fun(idx: 18): "DMXPersonality"
---@overload fun(idx: 19): "DMXStart"
---@overload fun(idx: 20): "Identify"
---@overload fun(idx: 21): "PanInvert"
---@overload fun(idx: 22): "TiltInvert"
---@overload fun(idx: 23): "DeviceHours"
---@overload fun(idx: 24): "DisplayInvert"
---@overload fun(idx: 25): "DisplayLevel"
---@overload fun(idx: 26): "LampState"
---@overload fun(idx: 27): "LampHours"
---@overload fun(idx: 28): "LampStrikes"
---@overload fun(idx: 29): "LampOnMode"
---@overload fun(idx: 30): "DevicePowerCycles"
---@overload fun(idx: 31): "PanTiltSwap"
---@overload fun(idx: 32): "PowerState"
---@overload fun(idx: 33): "ProxiedDevices"
---@overload fun(idx: 34): "ResetDevice"
---@overload fun(idx: 35): "FactoryDefaults"
---@overload fun(idx: 36): "Fixture"
---@overload fun(idx: 37): "Active"
function RDMFixture:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|37): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|17|33): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|18|19|23|25|27|28|30|36): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20|21|22|31|35): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 24): {ExportIgnore: False, EnumCollection: RDMPidValueDisplayInvert, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 26): {ExportIgnore: False, EnumCollection: RDMLampState, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 29): {ExportIgnore: False, EnumCollection: RDMLampOnMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 32): {ExportIgnore: False, EnumCollection: RDMPowerStateDefines, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 34): {ExportIgnore: False, EnumCollection: RDMPidValueResetDevice, ReadOnly: False, ImportIgnore: False}
function RDMFixture:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|37): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12|15|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16): "UInt16"
---@overload fun(idx: 17|36): "Handle"
function RDMFixture:PropertyType(idx) end
---@overload fun(name: "RDMFixtureType", role: nil): RDMFixtureType
---@overload fun(name: "LampOnMode", role: nil): RDMLampOnMode
---@overload fun(name: "LampState", role: nil): RDMLampState
---@overload fun(name: "Manufacturer", role: nil): RDMManufacturerId
---@overload fun(name: "DisplayInvert", role: nil): RDMPidValueDisplayInvert
---@overload fun(name: "ResetDevice", role: nil): RDMPidValueResetDevice
---@overload fun(name: "PowerState", role: nil): RDMPowerStateDefines
---@overload fun(name: "Fixture", role: nil): SubFixture
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Active", role: nil): YesNo|boolean
---@overload fun(name: "Identify"|"PanInvert"|"TiltInvert"|"PanTiltSwap"|"FactoryDefaults", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"UID"|"DMXPersonality"|"DMXStart"|"DeviceHours"|"DisplayLevel"|"LampHours"|"LampStrikes"|"DevicePowerCycles"|"ProxiedDevices", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UID"|"Manufacturer"|"RDMFixtureType"|"DMXPersonality"|"DMXStart"|"Identify"|"PanInvert"|"TiltInvert"|"DeviceHours"|"DisplayInvert"|"DisplayLevel"|"LampState"|"LampHours"|"LampStrikes"|"LampOnMode"|"DevicePowerCycles"|"PanTiltSwap"|"PowerState"|"ProxiedDevices"|"ResetDevice"|"FactoryDefaults"|"Fixture"|"Active", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FakeValueSensor
function RDMFixture:Get(name, role) end
---@generic T : FakeValueSensor
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FakeValueSensor
function RDMFixture:Create(index, class, undo) end
---@generic T : FakeValueSensor
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FakeValueSensor
function RDMFixture:Append(class, undo, count) end
---@generic T : FakeValueSensor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FakeValueSensor
function RDMFixture:Acquire(class, undo) end
---@generic T : FakeValueSensor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FakeValueSensor
---@deprecated use "Acquire" instead
function RDMFixture:Aquire(class, undo) end
---@generic T : FakeValueSensor
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FakeValueSensor
function RDMFixture:Insert(index, class, undo, count) end
---@generic T : FakeValueSensor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FakeValueSensor
function RDMFixture:Find(class, undo) end
---@overload fun(property_name: "RDMFixtureType", property_value: RDMFixtureType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LampOnMode", property_value: RDMLampOnMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LampState", property_value: RDMLampState, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DisplayInvert", property_value: RDMPidValueDisplayInvert, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ResetDevice", property_value: RDMPidValueResetDevice, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PowerState", property_value: RDMPowerStateDefines, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Fixture", property_value: SubFixture, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Active", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Identify"|"PanInvert"|"TiltInvert"|"PanTiltSwap"|"FactoryDefaults", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"UID"|"DMXPersonality"|"DMXStart"|"DeviceHours"|"DisplayLevel"|"LampHours"|"LampStrikes"|"DevicePowerCycles"|"ProxiedDevices", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function RDMFixture:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "PresentValue"|"Lowest"|"Recorded"|"Highest", property_value: integer)
function RDMFixture:SpecialDialogTab(property_name, property_value) end