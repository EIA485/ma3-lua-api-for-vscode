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
---@return FixtureTypeLocalLibraryFile
function FixtureTypeLocalModeLibFile:Parent() end
---@overload fun(name: "DMXFootprint", role: nil): DMXBreak
---@overload fun(name: "OriginDMXMode", role: nil): DMXMode
---@overload fun(name: "VirtualChannels"|"NonVirtualChannels", role: nil): DeskLightChannel[]
---@overload fun(name: "Source", role: nil): FixtureTypeSource
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Used"|"Lock"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Mode"|"Description"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "OriginDMXMode"|"Used"|"Source"|"Lock"|"Mode"|"DMXFootprint"|"Description"|"VirtualChannels"|"NonVirtualChannels"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureTypeLocalModeLibFile:Get(name, role) end