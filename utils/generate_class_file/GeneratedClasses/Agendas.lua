---@meta

---@class Agendas: Object
---@field Running YesNo|boolean
local Agendas = {
    Running="Yes"
}
---@return "Agendas"
function Agendas:GetClass() end
---@return "AgendaEvent"
function Agendas:GetChildClass() end
---@generic T : Agendas
---@param class `T`
---@return boolean
function Agendas:IsClass(class) end
---@return ShowData
function Agendas:Parent() end
---@param index integer
---@return AgendaEvent
function Agendas:Ptr(index) end
---@return AgendaEvent[]
function Agendas:Children() end
---@return AgendaEvent?
function Agendas:CurrentChild() end
---@return 16
function Agendas:PropertyCount() end
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
---@overload fun(idx: 15): "Running"
function Agendas:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Agendas:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|15): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function Agendas:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Running", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Running", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): AgendaEvent
function Agendas:Get(name, role) end
---@generic T : AgendaEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): AgendaEvent
function Agendas:Create(index, class, undo) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): AgendaEvent
function Agendas:Append(class, undo, count) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AgendaEvent
function Agendas:Acquire(class, undo) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AgendaEvent
---@deprecated use "Acquire" instead
function Agendas:Aquire(class, undo) end
---@generic T : AgendaEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AgendaEvent
function Agendas:Insert(index, class, undo, count) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AgendaEvent
function Agendas:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Running", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Agendas:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Object", property_value: Object)
---@overload fun(property_name: "DaylightOffset", property_value: SignedTimePropertyValue)
---@overload fun(property_name: "Scribble", property_value: Scribble)
---@overload fun(property_name: "ValidDuration", property_value: TimePropertyValue)
---@overload fun(property_name: "Mode", property_value: AgendaMode)
---@overload fun(property_name: "Action", property_value: AssignmentButtonFunctions)
---@overload fun(property_name: "Mode", property_value: AgendaMode)
---@overload fun(property_name: "Action", property_value: AssignmentButtonFunctions)
---@overload fun(property_name: "EndTime"|"PlannedDate"|"PlannedTime"|"StartDate"|"StartTime"|"EndDate", property_value: DatumMode)
---@overload fun(property_name: "Object", property_value: Object)
---@overload fun(property_name: "Scribble", property_value: Scribble)
---@overload fun(property_name: "DaylightOffset", property_value: SignedTimePropertyValue)
---@overload fun(property_name: "ValidDuration", property_value: TimePropertyValue)
---@overload fun(property_name: "RepeatOnThursday"|"RepeatOnFifthWeek"|"RepeatOnFriday"|"RepeatOnSixthWeek"|"RepeatOnSaturday"|"RepeatOnTuesday"|"RepeatOnSunday"|"Enabled"|"RepeatOnFirstWeek"|"RepeatOnMonday"|"RepeatOnSecondWeek"|"RepeatEveryYear"|"RepeatOnThirdWeek"|"RepeatOnFourthWeek"|"RepeatOnWednesday", property_value: YesNo|boolean)
---@overload fun(property_name: "DayRepeat"|"RepeatCountDays"|"WeekRepeat"|"MonthRepeat"|"RepeatCountTotal"|"MinuteInterval", property_value: integer)
---@overload fun(property_name: "Command"|"Countdown"|"Repeat", property_value: string)
function Agendas:SetChildren(property_name, property_value) end