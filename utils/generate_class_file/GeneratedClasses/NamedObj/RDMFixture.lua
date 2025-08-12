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
---@field Device
Hours integer
---@field Display
Invert integer
---@field Display
Level integer
---@field LampState integer
---@field LampHours integer
---@field LampStrikes integer
---@field LampOnMode integer
---@field DevicePowerCycles integer
---@field PanTiltSwap integer
---@field PowerState integer
---@field Proxied
Devices integer
---@field Reset
Device integer
---@field Factory
Defaults integer
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"UID", role: nil): integer
---@overload fun(name: "Manufacturer", role: nil): RDMManufacturerId
---@overload fun(name: "RDMFixtureType", role: nil): RDMFixtureType
---@overload fun(name: "DMXPersonality"|"DMXStart"|"Identify"|"PanInvert"|"TiltInvert"|"Device
Hours"|"Display
Invert"|"Display
Level"|"LampState"|"LampHours"|"LampStrikes"|"LampOnMode"|"DevicePowerCycles"|"PanTiltSwap"|"PowerState"|"Proxied
Devices"|"Reset
Device"|"Factory
Defaults", role: nil): integer
---@overload fun(name: "Fixture", role: nil): SubFixture
---@overload fun(name: "Active", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UID"|"Manufacturer"|"RDMFixtureType"|"DMXPersonality"|"DMXStart"|"Identify"|"PanInvert"|"TiltInvert"|"Device
Hours"|"Display
Invert"|"Display
Level"|"LampState"|"LampHours"|"LampStrikes"|"LampOnMode"|"DevicePowerCycles"|"PanTiltSwap"|"PowerState"|"Proxied
Devices"|"Reset
Device"|"Factory
Defaults"|"Fixture"|"Active", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FakeValueSensor
function RDMFixture:Get(name, role) end
---@overload fun(index: integer, class: "FakeValueSensor", undo: Undo?): FakeValueSensor
---@overload fun(index: integer, class: nil, undo: Undo?): FakeValueSensor
function RDMFixture:Create(index, class, undo) end
---@overload fun(class: "FakeValueSensor", undo: Undo?, count: integer?): FakeValueSensor
---@overload fun(class: nil, undo: Undo?, count: integer?): FakeValueSensor
function RDMFixture:Append(class, undo, count) end
---@overload fun(class: "FakeValueSensor", undo: Undo?): FakeValueSensor
---@overload fun(class: nil, undo: Undo?): FakeValueSensor
function RDMFixture:Acquire(class, undo) end
---@overload fun(class: "FakeValueSensor", undo: Undo?): FakeValueSensor
---@overload fun(class: nil, undo: Undo?): FakeValueSensor
---@deprecated use "Acquire" instead
function RDMFixture:Aquire(class, undo) end
---@overload fun(index: integer, class: "FakeValueSensor", undo: Undo?, count: integer?): FakeValueSensor
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FakeValueSensor
function RDMFixture:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FakeValueSensor"): FakeValueSensor
---@overload fun(name: string, class: nil): FakeValueSensor
function RDMFixture:Find(name, class) end
---@overload fun(name: string, class: "FakeValueSensor"): FakeValueSensor
---@overload fun(name: string, class: nil): Object
function RDMFixture:FindRecursive(name, class) end
