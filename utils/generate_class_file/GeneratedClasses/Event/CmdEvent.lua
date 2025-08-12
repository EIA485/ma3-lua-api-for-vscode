---@meta

---@class CmdEvent: Event
---@field Token PresetActionToken
---@field Cue
Destination Object
---@field Status integer
---@field Execute
Command boolean
local CmdEvent = {
    Status="On",
    ["Execute
Command"]="Yes"
}
---@return "CmdEvent"
function CmdEvent:GetClass() end
---@return "Object"
function CmdEvent:GetChildClass() end
---@return CmdSubTrack
function CmdEvent:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "TrackGroup"|"Track", role: nil): Object
---@overload fun(name: "Time"|"AbsTime", role: nil): SignedTimePropertyValue
---@overload fun(name: "RawTime", role: nil): integer
---@overload fun(name: "Type", role: nil): ArrangementMarcType
---@overload fun(name: "RealtimeCmd", role: nil): RealtimeCmdType
---@overload fun(name: "Fade
Override", role: nil): TimePropertyValue
---@overload fun(name: "IsUserTriggeredEvent", role: nil): fun() : boolean
---@overload fun(name: "Token", role: nil): PresetActionToken
---@overload fun(name: "Cue
Destination", role: nil): Object
---@overload fun(name: "Status", role: nil): integer
---@overload fun(name: "Execute
Command", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"TrackGroup"|"Track"|"Time"|"AbsTime"|"RawTime"|"Type"|"RealtimeCmd"|"Fade
Override"|"IsUserTriggeredEvent"|"Token"|"Cue
Destination"|"Status"|"Execute
Command", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CmdEvent:Get(name, role) end
