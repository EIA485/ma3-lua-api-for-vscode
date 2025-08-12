---@meta

---@class WindowTrackpadSettings: WindowSettings
---@field TrackpadMode TrackpadMode
---@field Resolution DimmerWheelResolution
---@field ResolutionPT DimmerWheelResolution
---@field InvertMode TrackpadPTInvertMode
---@field P/TMode TrackpadPTMode
---@field TrackpadTapForClick boolean
local WindowTrackpadSettings = {
    TrackpadMode="Mouse",
    Resolution="Normal",
    ResolutionPT="Normal",
    InvertMode="Off",
    ["P/TMode"]="Both",
    TrackpadTapForClick="Yes"
}
---@return "WindowTrackpadSettings"
function WindowTrackpadSettings:GetClass() end
---@return "Object"
function WindowTrackpadSettings:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "ShowTitleBar", role: nil): integer
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "RequestDefaultTitlebuttons", role: nil): integer
---@overload fun(name: "TitleButtonMask", role: nil): string
---@overload fun(name: "TrackpadMode", role: nil): TrackpadMode
---@overload fun(name: "Resolution"|"ResolutionPT", role: nil): DimmerWheelResolution
---@overload fun(name: "InvertMode", role: nil): TrackpadPTInvertMode
---@overload fun(name: "P/TMode", role: nil): TrackpadPTMode
---@overload fun(name: "TrackpadTapForClick", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"TrackpadMode"|"Resolution"|"ResolutionPT"|"InvertMode"|"P/TMode"|"TrackpadTapForClick", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowTrackpadSettings:Get(name, role) end
