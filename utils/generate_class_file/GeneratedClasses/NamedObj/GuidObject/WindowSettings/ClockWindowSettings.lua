---@meta

---@class ClockWindowSettings: WindowSettings
---@field Pixel
Color UColor
---@field ClockSource ClockSources
---@field TCSlot integer
---@field TimeDisplayFormat integer
---@field FrameReadout integer
---@field Timezone number
---@field TimezoneStr string
---@field TitlePrefix string
---@field TimerIndex integer
---@field ShowSecondFractals boolean
---@field SessionTimeStyle integer
---@field SessionTimeStyleTZ integer
local ClockWindowSettings = {
    TimeDisplayFormat="0",
    FrameReadout="0",
    ShowSecondFractals="Yes",
    SessionTimeStyle="0",
    SessionTimeStyleTZ="0"
}
---@return "ClockWindowSettings"
function ClockWindowSettings:GetClass() end
---@return "Object"
function ClockWindowSettings:GetChildClass() end
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
---@overload fun(name: "Pixel
Color", role: nil): UColor
---@overload fun(name: "ClockSource", role: nil): ClockSources
---@overload fun(name: "TCSlot"|"TimeDisplayFormat"|"FrameReadout", role: nil): integer
---@overload fun(name: "Timezone", role: nil): number
---@overload fun(name: "TimezoneStr"|"TitlePrefix", role: nil): string
---@overload fun(name: "TimerIndex", role: nil): integer
---@overload fun(name: "ShowSecondFractals", role: nil): boolean
---@overload fun(name: "SessionTimeStyle"|"SessionTimeStyleTZ", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Pixel
Color"|"ClockSource"|"TCSlot"|"TimeDisplayFormat"|"FrameReadout"|"Timezone"|"TimezoneStr"|"TitlePrefix"|"TimerIndex"|"ShowSecondFractals"|"SessionTimeStyle"|"SessionTimeStyleTZ", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ClockWindowSettings:Get(name, role) end
