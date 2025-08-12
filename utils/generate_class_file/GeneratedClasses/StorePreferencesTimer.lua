---@meta

---@class StorePreferencesTimer: Object
---@field TimerMode TimerMode
---@field TimeReadout integer
---@field RestartOption RestartOption
---@field TimerLinkType integer
---@field TimerTriggerToken TimerTriggerToken
---@field CountdownAlertType CountdownAlertType
---@field CountdownAlertRange CountdownAlertRange
---@field CountdownDuration TimePropertyValue
---@field AlertCommand string
---@field AlertText string
---@field FrameFormat integer
---@field AlertDuration TimePropertyValue
local StorePreferencesTimer = {}
---@return "StorePreferencesTimer"
function StorePreferencesTimer:GetClass() end
---@return "Object"
function StorePreferencesTimer:GetChildClass() end
---@return StorePreferences
function StorePreferencesTimer:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "TimerMode", role: nil): TimerMode
---@overload fun(name: "TimeReadout", role: nil): integer
---@overload fun(name: "RestartOption", role: nil): RestartOption
---@overload fun(name: "TimerLinkType", role: nil): integer
---@overload fun(name: "TimerTriggerToken", role: nil): TimerTriggerToken
---@overload fun(name: "CountdownAlertType", role: nil): CountdownAlertType
---@overload fun(name: "CountdownAlertRange", role: nil): CountdownAlertRange
---@overload fun(name: "CountdownDuration", role: nil): TimePropertyValue
---@overload fun(name: "AlertCommand"|"AlertText", role: nil): string
---@overload fun(name: "FrameFormat", role: nil): integer
---@overload fun(name: "AlertDuration", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"TimerMode"|"TimeReadout"|"RestartOption"|"TimerLinkType"|"TimerTriggerToken"|"CountdownAlertType"|"CountdownAlertRange"|"CountdownDuration"|"AlertCommand"|"AlertText"|"FrameFormat"|"AlertDuration", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function StorePreferencesTimer:Get(name, role) end
