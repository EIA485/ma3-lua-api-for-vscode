---@meta

---@class LocalSettings: Object Mixed settings which relate only to the local station.
---@field DefaultLanguage string
---@field RememberedUser string
---@field SelectedDrive string
---@field SelectedDriveObject Drive
---@field EULAAccepted integer
---@field ForceLogin integer
---@field ShowReleaseNotes integer
---@field SystemGuid Crypto.Guid<128>
---@field ForceSetOnPCSystemTime integer
---@field OnPCSystemTimeOffset integer
---@field Resolution
Limit integer
---@field Connection
Limit integer
---@field OnPCMidiOutDeviceName string
---@field OnPCMidiInDeviceName string
---@field OnPCAudioInDeviceName string
---@field AudioOutDeviceName string
---@field OnPCMidiFromWing integer
---@field OnPCMidiTimecodeSlot integer
---@field OnPCMidiOffset integer
---@field OnPCUseVizKey integer
---@field StartupShowfileName string
---@field StartupBrowserFilter StartupBrowserFilter
---@field StartupShowfileFilter integer
local LocalSettings = {
    DefaultLanguage="en",
    RememberedUser="Guest",
    EULAAccepted="No",
    ForceLogin="No",
    ShowReleaseNotes="Yes",
    SystemGuid="0",
    ForceSetOnPCSystemTime="No",
    OnPCSystemTimeOffset="0",
    ["Resolution
Limit"]="1080p",
    ["Connection
Limit"]="2",
    OnPCMidiFromWing="Yes",
    OnPCMidiTimecodeSlot="Slot1",
    OnPCMidiOffset="0",
    OnPCUseVizKey="Yes",
    StartupBrowserFilter="Shows",
    StartupShowfileFilter="15"
}
---@return "LocalSettings"
function LocalSettings:GetClass() end
---@return "Object"
function LocalSettings:GetChildClass() end
---@return StationSettings
function LocalSettings:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "DefaultLanguage"|"RememberedUser"|"SelectedDrive", role: nil): string
---@overload fun(name: "SelectedDriveObject", role: nil): Drive
---@overload fun(name: "EULAAccepted"|"ForceLogin"|"ShowReleaseNotes", role: nil): integer
---@overload fun(name: "SystemGuid", role: nil): Crypto.Guid<128>
---@overload fun(name: "ForceSetOnPCSystemTime"|"OnPCSystemTimeOffset"|"Resolution
Limit"|"Connection
Limit", role: nil): integer
---@overload fun(name: "OnPCMidiOutDeviceName"|"OnPCMidiInDeviceName"|"OnPCAudioInDeviceName"|"AudioOutDeviceName", role: nil): string
---@overload fun(name: "OnPCMidiFromWing"|"OnPCMidiTimecodeSlot"|"OnPCMidiOffset"|"OnPCUseVizKey", role: nil): integer
---@overload fun(name: "StartupShowfileName", role: nil): string
---@overload fun(name: "StartupBrowserFilter", role: nil): StartupBrowserFilter
---@overload fun(name: "StartupShowfileFilter", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultLanguage"|"RememberedUser"|"SelectedDrive"|"SelectedDriveObject"|"EULAAccepted"|"ForceLogin"|"ShowReleaseNotes"|"SystemGuid"|"ForceSetOnPCSystemTime"|"OnPCSystemTimeOffset"|"Resolution
Limit"|"Connection
Limit"|"OnPCMidiOutDeviceName"|"OnPCMidiInDeviceName"|"OnPCAudioInDeviceName"|"AudioOutDeviceName"|"OnPCMidiFromWing"|"OnPCMidiTimecodeSlot"|"OnPCMidiOffset"|"OnPCUseVizKey"|"StartupShowfileName"|"StartupBrowserFilter"|"StartupShowfileFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function LocalSettings:Get(name, role) end
