---@meta

---@class RDMPort: Object RDM port
---@field UniverseIndex integer
local RDMPort = {}
---@return "RDMPort"
function RDMPort:GetClass() end
---@return "RDMFixture"
function RDMPort:GetChildClass() end
---@generic T : RDMPort
---@param class `T`
---@return boolean
function RDMPort:IsClass(class) end
---@return RDMPorts
function RDMPort:Parent() end
---@param index integer
---@return RDMFixture
function RDMPort:Ptr(index) end
---@return RDMFixture[]
function RDMPort:Children() end
---@return RDMFixture?
function RDMPort:CurrentChild() end
---@return 16
function RDMPort:PropertyCount() end
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
---@overload fun(idx: 15): "UniverseIndex"
function RDMPort:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function RDMPort:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12|15): "UInt64"
---@overload fun(idx: 14): "Int64"
function RDMPort:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"UniverseIndex", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UniverseIndex", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): RDMFixture
function RDMPort:Get(name, role) end
---@generic T : RDMFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RDMFixture
function RDMPort:Create(index, class, undo) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMFixture
function RDMPort:Append(class, undo, count) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixture
function RDMPort:Acquire(class, undo) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixture
---@deprecated use "Acquire" instead
function RDMPort:Aquire(class, undo) end
---@generic T : RDMFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMFixture
function RDMPort:Insert(index, class, undo, count) end
---@generic T : RDMFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMFixture
function RDMPort:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"UniverseIndex", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function RDMPort:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "PowerState", property_value: RDMPowerStateDefines)
---@overload fun(property_name: "RDMFixtureType", property_value: RDMFixtureType)
---@overload fun(property_name: "LampState", property_value: RDMLampState)
---@overload fun(property_name: "ResetDevice", property_value: RDMPidValueResetDevice)
---@overload fun(property_name: "DisplayInvert", property_value: RDMPidValueDisplayInvert)
---@overload fun(property_name: "Fixture", property_value: SubFixture)
---@overload fun(property_name: "LampOnMode", property_value: RDMLampOnMode)
---@overload fun(property_name: "Active", property_value: YesNo|boolean)
---@overload fun(property_name: "RDMFixtureType", property_value: RDMFixtureType)
---@overload fun(property_name: "LampOnMode", property_value: RDMLampOnMode)
---@overload fun(property_name: "LampState", property_value: RDMLampState)
---@overload fun(property_name: "DisplayInvert", property_value: RDMPidValueDisplayInvert)
---@overload fun(property_name: "ResetDevice", property_value: RDMPidValueResetDevice)
---@overload fun(property_name: "PowerState", property_value: RDMPowerStateDefines)
---@overload fun(property_name: "Fixture", property_value: SubFixture)
---@overload fun(property_name: "Active", property_value: YesNo|boolean)
---@overload fun(property_name: "FactoryDefaults"|"Identify"|"PanTiltSwap"|"PanInvert"|"TiltInvert", property_value: Yes|true)
---@overload fun(property_name: "DeviceHours"|"ProxiedDevices"|"DisplayLevel"|"DMXPersonality"|"DMXStart"|"LampHours"|"LampStrikes"|"DevicePowerCycles"|"UID", property_value: integer)
function RDMPort:Active(property_name, property_value) end