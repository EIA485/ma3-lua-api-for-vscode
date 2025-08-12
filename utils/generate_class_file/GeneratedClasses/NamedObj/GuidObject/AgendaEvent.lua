---@meta

---@class AgendaEvent: GuidObject
---@field Scribble Scribble
---@field Mode AgendaMode
---@field StartDate Datum
---@field StartTime Datum
---@field EndDate Datum
---@field EndTime Datum
---@field Daylight
Offset SignedTimePropertyValue
---@field Valid
Duration TimePropertyValue
---@field Enabled integer
---@field Object Object
---@field Action StreamToken
---@field Command string
---@field Repeat string
---@field Countdown string
---@field Planned
Date Datum
---@field Planned
Time Datum
---@field RepeatCount
Days integer
---@field RepeatCount
Total integer
---@field RepeatOnMonday integer
---@field RepeatOnTuesday integer
---@field RepeatOnWednesday integer
---@field RepeatOnThursday integer
---@field RepeatOnFriday integer
---@field RepeatOnSaturday integer
---@field RepeatOnSunday integer
---@field RepeatOnFirstWeek integer
---@field RepeatOnSecondWeek integer
---@field RepeatOnThirdWeek integer
---@field RepeatOnFourthWeek integer
---@field RepeatOnFifthWeek integer
---@field RepeatOnSixthWeek integer
---@field DayRepeat integer
---@field WeekRepeat integer
---@field MonthRepeat integer
---@field RepeatEveryYear boolean
---@field MinuteInterval integer
---@field ResetPattern fun()
---@field ResetEnddate fun()
---@field Fire fun() : boolean
local AgendaEvent = {
    ["Valid
Duration"]="0.1s",
    Enabled="Yes",
    RepeatOnMonday="Yes",
    RepeatOnTuesday="Yes",
    RepeatOnWednesday="Yes",
    RepeatOnThursday="Yes",
    RepeatOnFriday="Yes",
    RepeatOnSaturday="Yes",
    RepeatOnSunday="Yes",
    RepeatOnFirstWeek="Yes",
    RepeatOnSecondWeek="Yes",
    RepeatOnThirdWeek="Yes",
    RepeatOnFourthWeek="Yes",
    RepeatOnFifthWeek="Yes",
    RepeatOnSixthWeek="Yes",
    MinuteInterval="0"
}
---@return "AgendaEvent"
function AgendaEvent:GetClass() end
---@return "Object"
function AgendaEvent:GetChildClass() end
---@return Agendas
function AgendaEvent:Parent() end
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
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Mode", role: nil): AgendaMode
---@overload fun(name: "StartDate"|"StartTime"|"EndDate"|"EndTime", role: nil): Datum
---@overload fun(name: "Daylight
Offset", role: nil): SignedTimePropertyValue
---@overload fun(name: "Valid
Duration", role: nil): TimePropertyValue
---@overload fun(name: "Enabled", role: nil): integer
---@overload fun(name: "Object", role: nil): Object
---@overload fun(name: "Action", role: nil): StreamToken
---@overload fun(name: "Command"|"Repeat"|"Countdown", role: nil): string
---@overload fun(name: "Planned
Date"|"Planned
Time", role: nil): Datum
---@overload fun(name: "RepeatCount
Days"|"RepeatCount
Total"|"RepeatOnMonday"|"RepeatOnTuesday"|"RepeatOnWednesday"|"RepeatOnThursday"|"RepeatOnFriday"|"RepeatOnSaturday"|"RepeatOnSunday"|"RepeatOnFirstWeek"|"RepeatOnSecondWeek"|"RepeatOnThirdWeek"|"RepeatOnFourthWeek"|"RepeatOnFifthWeek"|"RepeatOnSixthWeek"|"DayRepeat"|"WeekRepeat"|"MonthRepeat", role: nil): integer
---@overload fun(name: "RepeatEveryYear", role: nil): boolean
---@overload fun(name: "MinuteInterval", role: nil): integer
---@overload fun(name: "ResetPattern"|"ResetEnddate", role: nil): fun()
---@overload fun(name: "Fire", role: nil): fun() : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Scribble"|"Mode"|"StartDate"|"StartTime"|"EndDate"|"EndTime"|"Daylight
Offset"|"Valid
Duration"|"Enabled"|"Object"|"Action"|"Command"|"Repeat"|"Countdown"|"Planned
Date"|"Planned
Time"|"RepeatCount
Days"|"RepeatCount
Total"|"RepeatOnMonday"|"RepeatOnTuesday"|"RepeatOnWednesday"|"RepeatOnThursday"|"RepeatOnFriday"|"RepeatOnSaturday"|"RepeatOnSunday"|"RepeatOnFirstWeek"|"RepeatOnSecondWeek"|"RepeatOnThirdWeek"|"RepeatOnFourthWeek"|"RepeatOnFifthWeek"|"RepeatOnSixthWeek"|"DayRepeat"|"WeekRepeat"|"MonthRepeat"|"RepeatEveryYear"|"MinuteInterval"|"ResetPattern"|"ResetEnddate"|"Fire", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function AgendaEvent:Get(name, role) end
