---@meta

---@class FixtureTypeLocalModeLibFile: FixtureTypeModeFile Library cache entry for a local (in the current show) DMX mode.
---@field OriginDMXMode DMXMode
---@field Used integer
---@field Source FixtureTypeSource
local FixtureTypeLocalModeLibFile = {}
---@return "FixtureTypeLocalModeLibFile"
function FixtureTypeLocalModeLibFile:GetClass() end
---@return "Object"
function FixtureTypeLocalModeLibFile:GetChildClass() end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@return boolean
function FixtureTypeLocalModeLibFile:IsClass(class) end
---@return FixtureTypeLocalLibraryFile
function FixtureTypeLocalModeLibFile:Parent() end
---@return 23
function FixtureTypeLocalModeLibFile:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Index"
---@overload fun(idx: 4): "Count"
---@overload fun(idx: 5): "No"
---@overload fun(idx: 6): "Name"
---@overload fun(idx: 7): "Note"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Lock"
---@overload fun(idx: 15): "Mode"
---@overload fun(idx: 16): "DMXFootprint"
---@overload fun(idx: 17): "Description"
---@overload fun(idx: 18): "VirtualChannels"
---@overload fun(idx: 19): "NonVirtualChannels"
---@overload fun(idx: 20): "OriginDMXMode"
---@overload fun(idx: 21): "Used"
---@overload fun(idx: 22): "Source"
function FixtureTypeLocalModeLibFile:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|4|5|14|18|19|21): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 6|7|12|15|16|17): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 13|20): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 22): {ExportIgnore: True, EnumCollection: FixtureTypeSource, ReadOnly: False, ImportIgnore: False}
function FixtureTypeLocalModeLibFile:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|8|14|21): "UInt32"
---@overload fun(idx: 6|7|12|15|17): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 16|18|19): "Custom"
---@overload fun(idx: 20): "Handle"
---@overload fun(idx: 22): "UInt8"
function FixtureTypeLocalModeLibFile:PropertyType(idx) end
---@overload fun(name: "OriginDMXMode", role: nil): DMXMode
---@overload fun(name: "VirtualChannels"|"NonVirtualChannels", role: nil): DeskLightChannel[]
---@overload fun(name: "Source", role: nil): FixtureTypeSource
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "DMXFootprint", role: nil): [DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak]
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Lock"|"Used", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Mode"|"Description", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Lock"|"Mode"|"DMXFootprint"|"Description"|"VirtualChannels"|"NonVirtualChannels"|"OriginDMXMode"|"Used"|"Source", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureTypeLocalModeLibFile:Get(name, role) end
---@overload fun(property_name: "VirtualChannels"|"NonVirtualChannels", property_value: DeskLightChannel[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "Source", property_value: FixtureTypeSource, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DMXFootprint", property_value: [DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak, DMXBreak], override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Lock"|"Used", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Mode"|"Description", property_value: string, override_change_level: ChangeLevel?)
function FixtureTypeLocalModeLibFile:Set(property_name, property_value, override_change_level) end