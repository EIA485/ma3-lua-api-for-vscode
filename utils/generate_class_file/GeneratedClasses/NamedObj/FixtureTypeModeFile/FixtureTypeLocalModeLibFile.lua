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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Lock", role: nil): integer
---@overload fun(name: "Mode", role: nil): string
---@overload fun(name: "DMXFootprint", role: nil): DMXBreak
---@overload fun(name: "Description", role: nil): string
---@overload fun(name: "VirtualChannels"|"NonVirtualChannels", role: nil): DeskLightChannel[]
---@overload fun(name: "OriginDMXMode", role: nil): DMXMode
---@overload fun(name: "Used", role: nil): integer
---@overload fun(name: "Source", role: nil): FixtureTypeSource
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Lock"|"Mode"|"DMXFootprint"|"Description"|"VirtualChannels"|"NonVirtualChannels"|"OriginDMXMode"|"Used"|"Source", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureTypeLocalModeLibFile:Get(name, role) end
