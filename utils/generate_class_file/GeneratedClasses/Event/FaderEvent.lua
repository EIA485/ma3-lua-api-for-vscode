---@meta

---@class FaderEvent: Event
---@field Token PresetActionToken
---@field FaderValue integer
local FaderEvent = {}
---@return "FaderEvent"
function FaderEvent:GetClass() end
---@return "Object"
function FaderEvent:GetChildClass() end
---@return FaderSubTrack
function FaderEvent:Parent() end
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
---@overload fun(name: "FaderValue", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"TrackGroup"|"Track"|"Time"|"AbsTime"|"RawTime"|"Type"|"RealtimeCmd"|"Fade
Override"|"IsUserTriggeredEvent"|"Token"|"FaderValue", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FaderEvent:Get(name, role) end
