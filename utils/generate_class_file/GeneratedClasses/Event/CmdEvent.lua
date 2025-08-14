---@meta

---@class CmdEvent: Event
---@field Token PresetActionToken
---@field CueDestination Object
---@field Status integer
---@field ExecuteCommand boolean
local CmdEvent = {
    Status="On",
    ExecuteCommand="Yes"
}
---@return "CmdEvent"
function CmdEvent:GetClass() end
---@return "Object"
function CmdEvent:GetChildClass() end
---@return CmdSubTrack
function CmdEvent:Parent() end
---@overload fun(name: "Type", role: nil): ArrangementMarcType
---@overload fun(name: "CueDestination"|"TrackGroup"|"Track", role: nil): Object
---@overload fun(name: "Token", role: nil): PresetActionToken
---@overload fun(name: "RealtimeCmd", role: nil): RealtimeCmdType
---@overload fun(name: "Time"|"AbsTime", role: nil): SignedTimePropertyValue
---@overload fun(name: "FadeOverride", role: nil): TimePropertyValue
---@overload fun(name: "ExecuteCommand"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IsUserTriggeredEvent", role: nil): fun() : boolean
---@overload fun(name: "Status"|"RawTime"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Token"|"CueDestination"|"Status"|"ExecuteCommand"|"TrackGroup"|"Track"|"Time"|"AbsTime"|"RawTime"|"Type"|"RealtimeCmd"|"FadeOverride"|"IsUserTriggeredEvent"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CmdEvent:Get(name, role) end