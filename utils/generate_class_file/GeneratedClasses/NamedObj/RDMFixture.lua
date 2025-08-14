---@meta

---@class RDMFixture: NamedObj RDM fixture
---@field UID integer RDM Device UID
---@field Manufacturer RDMManufacturerId
---@field RDMFixtureType RDMFixtureType
---@field DMXPersonality integer
---@field DMXStart integer
---@field Identify integer
---@field PanInvert integer
---@field TiltInvert integer
---@field DeviceHours integer
---@field DisplayInvert integer
---@field DisplayLevel integer
---@field LampState integer
---@field LampHours integer
---@field LampStrikes integer
---@field LampOnMode integer
---@field DevicePowerCycles integer
---@field PanTiltSwap integer
---@field PowerState integer
---@field ProxiedDevices integer
---@field ResetDevice integer
---@field FactoryDefaults integer
---@field Fixture SubFixture
---@field Active integer
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
---@return RDMPort
function RDMFixture:Parent() end
---@param index integer
---@return FakeValueSensor
function RDMFixture:Ptr(index) end
---@return FakeValueSensor[]
function RDMFixture:Children() end
---@return FakeValueSensor?
function RDMFixture:CurrentChild() end
---@overload fun(name: "RDMFixtureType", role: nil): RDMFixtureType
---@overload fun(name: "Manufacturer", role: nil): RDMManufacturerId
---@overload fun(name: "Fixture", role: nil): SubFixture
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "UID"|"DMXPersonality"|"DMXStart"|"Identify"|"PanInvert"|"TiltInvert"|"DeviceHours"|"DisplayInvert"|"DisplayLevel"|"LampState"|"LampHours"|"LampStrikes"|"LampOnMode"|"DevicePowerCycles"|"PanTiltSwap"|"PowerState"|"ProxiedDevices"|"ResetDevice"|"FactoryDefaults"|"Active"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "UID"|"Manufacturer"|"RDMFixtureType"|"DMXPersonality"|"DMXStart"|"Identify"|"PanInvert"|"TiltInvert"|"DeviceHours"|"DisplayInvert"|"DisplayLevel"|"LampState"|"LampHours"|"LampStrikes"|"LampOnMode"|"DevicePowerCycles"|"PanTiltSwap"|"PowerState"|"ProxiedDevices"|"ResetDevice"|"FactoryDefaults"|"Fixture"|"Active"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
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