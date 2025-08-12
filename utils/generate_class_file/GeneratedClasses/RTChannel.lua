---@meta

---@class RTChannel: Object Displays all realtime channels of all subfixtures
---@field FID integer
---@field IDType integer
---@field CID integer
---@field ChannelName string
---@field Frequency integer
---@field Default DMXPropertyValue
---@field Default
Preset Object
---@field Highlight DMXPropertyValue
---@field Highlight
Preset Object
---@field Lowlight DMXPropertyValue
---@field Lowlight
Preset Object
---@field Coarse DMXPropertyAddress
---@field Fine DMXPropertyAddress
---@field Ultra DMXPropertyAddress
---@field DmxCurve integer
local RTChannel = {
    FID="None",
    IDType="Fixture",
    CID="None"
}
---@return "RTChannel"
function RTChannel:GetClass() end
---@return "Object"
function RTChannel:GetChildClass() end
---@return RTChannels
function RTChannel:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"FID"|"IDType"|"CID", role: nil): integer
---@overload fun(name: "ChannelName", role: nil): string
---@overload fun(name: "Frequency", role: nil): integer
---@overload fun(name: "Default", role: nil): DMXPropertyValue
---@overload fun(name: "Default
Preset", role: nil): Object
---@overload fun(name: "Highlight", role: nil): DMXPropertyValue
---@overload fun(name: "Highlight
Preset", role: nil): Object
---@overload fun(name: "Lowlight", role: nil): DMXPropertyValue
---@overload fun(name: "Lowlight
Preset", role: nil): Object
---@overload fun(name: "Coarse"|"Fine"|"Ultra", role: nil): DMXPropertyAddress
---@overload fun(name: "DmxCurve", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FID"|"IDType"|"CID"|"ChannelName"|"Frequency"|"Default"|"Default
Preset"|"Highlight"|"Highlight
Preset"|"Lowlight"|"Lowlight
Preset"|"Coarse"|"Fine"|"Ultra"|"DmxCurve", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RTChannel:Get(name, role) end
