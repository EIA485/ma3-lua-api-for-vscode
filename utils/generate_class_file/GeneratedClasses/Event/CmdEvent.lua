---@meta

---@class CmdEvent: Event
---@field Token AssignmentTimecodeFunctions
---@field CueDestination Object
---@field Status CmdEventStatus|boolean
---@field ExecuteCommand YesNo|boolean
local CmdEvent = {
    Status="On",
    ExecuteCommand="Yes"
}
---@return "CmdEvent"
function CmdEvent:GetClass() end
---@return "Object"
function CmdEvent:GetChildClass() end
---@generic T : CmdEvent
---@param class `T`
---@return boolean
function CmdEvent:IsClass(class) end
---@return CmdSubTrack
function CmdEvent:Parent() end
---@return 28
function CmdEvent:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "TrackGroup"
---@overload fun(idx: 16): "Track"
---@overload fun(idx: 17): "Time"
---@overload fun(idx: 18): "AbsTime"
---@overload fun(idx: 19): "RawTime"
---@overload fun(idx: 20): "Type"
---@overload fun(idx: 21): "RealtimeCmd"
---@overload fun(idx: 22): "FadeOverride"
---@overload fun(idx: 23): "IsUserTriggeredEvent"
---@overload fun(idx: 24): "Token"
---@overload fun(idx: 25): "CueDestination"
---@overload fun(idx: 26): "Status"
---@overload fun(idx: 27): "ExecuteCommand"
function CmdEvent:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|27): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|16|20): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|17|21): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|19|22|23): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 18): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 24): {ExportIgnore: False, EnumCollection: AssignmentTimecodeFunctions, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 25): {ExportIgnore: False, ReadOnly: False, ImportIgnore: True}
---@overload fun(idx: 26): {ExportIgnore: False, EnumCollection: CmdEventStatus, ReadOnly: True, ImportIgnore: True}
function CmdEvent:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|26): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|27): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14|19): "Int64"
---@overload fun(idx: 15|16|25): "Handle"
---@overload fun(idx: 17|18): "Int64SignedTime"
---@overload fun(idx: 20): "UInt8"
---@overload fun(idx: 21): "Custom"
---@overload fun(idx: 22): "Int64Time"
---@overload fun(idx: 23): "Method"
---@overload fun(idx: 24): "Token"
function CmdEvent:PropertyType(idx) end
---@overload fun(name: "Type", role: nil): ArrangementMarcType
---@overload fun(name: "Token", role: nil): AssignmentTimecodeFunctions
---@overload fun(name: "Status", role: nil): CmdEventStatus|boolean
---@overload fun(name: "TrackGroup"|"Track"|"CueDestination", role: nil): Object
---@overload fun(name: "RealtimeCmd", role: nil): RealtimeCmdType
---@overload fun(name: "Time"|"AbsTime", role: nil): SignedTimePropertyValue
---@overload fun(name: "FadeOverride", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"ExecuteCommand", role: nil): YesNo|boolean
---@overload fun(name: "IsUserTriggeredEvent", role: nil): fun() : boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"RawTime", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"TrackGroup"|"Track"|"Time"|"AbsTime"|"RawTime"|"Type"|"RealtimeCmd"|"FadeOverride"|"IsUserTriggeredEvent"|"Token"|"CueDestination"|"Status"|"ExecuteCommand", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CmdEvent:Get(name, role) end
---@overload fun(property_name: "Type", property_value: ArrangementMarcType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TrackGroup"|"Track"|"CueDestination", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RealtimeCmd", property_value: RealtimeCmdType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Time", property_value: SignedTimePropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"ExecuteCommand", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function CmdEvent:Set(property_name, property_value, override_change_level) end