---@meta

---@class FixtureTypeModeFile: NamedObj Library cache entry for a fixture type.
---@field Lock integer
---@field Mode string
---@field DMXFootprint DMXBreak
---@field Description string
---@field VirtualChannels DeskLightChannel[]
---@field NonVirtualChannels DeskLightChannel[]
local FixtureTypeModeFile = {}
---@return "FixtureTypeModeFile"
function FixtureTypeModeFile:GetClass() end
---@return "Object"
function FixtureTypeModeFile:GetChildClass() end
---@return FixtureTypeFile
function FixtureTypeModeFile:Parent() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Lock"|"Mode"|"DMXFootprint"|"Description"|"VirtualChannels"|"NonVirtualChannels", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureTypeModeFile:Get(name, role) end
