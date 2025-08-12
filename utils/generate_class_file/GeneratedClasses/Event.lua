---@meta

---@class Event: Object
---@field TrackGroup Object
---@field Track Object
---@field Time SignedTimePropertyValue
---@field AbsTime SignedTimePropertyValue
---@field RawTime integer
---@field Type ArrangementMarcType
---@field RealtimeCmd RealtimeCmdType
---@field Fade
Override TimePropertyValue
---@field IsUserTriggeredEvent fun() : boolean
local Event = {}
---@return "Event"
function Event:GetClass() end
---@return "Object"
function Event:GetChildClass() end
---@return SubTrack
function Event:Parent() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"TrackGroup"|"Track"|"Time"|"AbsTime"|"RawTime"|"Type"|"RealtimeCmd"|"Fade
Override"|"IsUserTriggeredEvent", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Event:Get(name, role) end
