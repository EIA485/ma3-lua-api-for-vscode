---@meta

---@class Timer: GuidObject
---@field Timer
Mode TimerMode
---@field TimeReadout integer
---@field RestartOption RestartOption
---@field TimerLinkType integer
---@field TimerTriggerToken TimerTriggerToken
---@field CountdownAlertType CountdownAlertType
---@field CountdownAlertRange CountdownAlertRange
---@field CountdownDuration TimePropertyValue
---@field Elapsed
Time TimePropertyValue
---@field Remaining
Time TimePropertyValue
---@field AlertCommand string
---@field AlertText string
---@field FrameFormat integer
---@field AlertDuration TimePropertyValue
---@field LoadFromDefault fun(cmdline: Cmdline)
---@field SaveToDefault fun(cmdline: Cmdline)
---@field StopwatchColor UColor
---@field CountdownColor UColor
---@field ConfirmedColor UColor
---@field Type string
---@field User string
local Timer = {
    TimerLinkType="Not Linked"
}
---@return "Timer"
function Timer:GetClass() end
---@return "Object"
function Timer:GetChildClass() end
---@return Timers
function Timer:Parent() end
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
---@overload fun(name: "Timer
Mode", role: nil): TimerMode
---@overload fun(name: "TimeReadout", role: nil): integer
---@overload fun(name: "RestartOption", role: nil): RestartOption
---@overload fun(name: "TimerLinkType", role: nil): integer
---@overload fun(name: "TimerTriggerToken", role: nil): TimerTriggerToken
---@overload fun(name: "CountdownAlertType", role: nil): CountdownAlertType
---@overload fun(name: "CountdownAlertRange", role: nil): CountdownAlertRange
---@overload fun(name: "CountdownDuration"|"Elapsed
Time"|"Remaining
Time", role: nil): TimePropertyValue
---@overload fun(name: "AlertCommand"|"AlertText", role: nil): string
---@overload fun(name: "FrameFormat", role: nil): integer
---@overload fun(name: "AlertDuration", role: nil): TimePropertyValue
---@overload fun(name: "LoadFromDefault"|"SaveToDefault", role: nil): fun(cmdline: Cmdline)
---@overload fun(name: "StopwatchColor"|"CountdownColor"|"ConfirmedColor", role: nil): UColor
---@overload fun(name: "Type"|"User", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Timer
Mode"|"TimeReadout"|"RestartOption"|"TimerLinkType"|"TimerTriggerToken"|"CountdownAlertType"|"CountdownAlertRange"|"CountdownDuration"|"Elapsed
Time"|"Remaining
Time"|"AlertCommand"|"AlertText"|"FrameFormat"|"AlertDuration"|"LoadFromDefault"|"SaveToDefault"|"StopwatchColor"|"CountdownColor"|"ConfirmedColor"|"Type"|"User", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Timer:Get(name, role) end
