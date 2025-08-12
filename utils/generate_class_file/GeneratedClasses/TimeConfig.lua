---@meta

---@class TimeConfig: Object Defines time zone, daylight settings etc.
---@field DaylightSavingState TimeConfig.DaylightSavingState
---@field Hour integer
---@field Minute integer
---@field Second integer
---@field Day integer
---@field Month Month
---@field Year integer
---@field Timezone number
---@field TimezoneStr string
---@field Longitude number
---@field Latitude number
---@field LocalTime Datum
---@field LocalTimeMS integer
---@field OnPCSystemTimeOffset integer
---@field YesterdayDawn Datum
---@field YesterdaySunrise Datum
---@field YesterdaySunset Datum
---@field YesterdayDusk Datum
---@field TodayDawn Datum
---@field TodaySunrise Datum
---@field TodaySunset Datum
---@field TodayDusk Datum
---@field TomorrowDawn Datum
---@field TomorrowSunrise Datum
---@field TomorrowSunset Datum
---@field TomorrowDusk Datum
---@field DaylightDayStart integer
---@field DaylightMonthStart integer
---@field DaylightDayEnd integer
---@field DaylightMonthEnd integer
---@field DaylightSavingEnabled integer
---@field AutoTimezone integer
---@field TimeOfForwardTimeshift TimePropertyValue
---@field TimeOfBackwardTimeshift TimePropertyValue
---@field NtpTimeserverIP Manet.IP4
---@field NtpTimeserverName string
---@field TimeSyncMode integer
---@field SetClock fun()
local TimeConfig = {
    DaylightDayStart="0",
    DaylightMonthStart="0",
    DaylightDayEnd="0",
    DaylightMonthEnd="0",
    DaylightSavingEnabled="0",
    AutoTimezone="0"
}
---@return "TimeConfig"
function TimeConfig:GetClass() end
---@return "Object"
function TimeConfig:GetChildClass() end
---@return StationSettings
function TimeConfig:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "DaylightSavingState", role: nil): TimeConfig.DaylightSavingState
---@overload fun(name: "Hour"|"Minute"|"Second"|"Day", role: nil): integer
---@overload fun(name: "Month", role: nil): Month
---@overload fun(name: "Year", role: nil): integer
---@overload fun(name: "Timezone", role: nil): number
---@overload fun(name: "TimezoneStr", role: nil): string
---@overload fun(name: "Longitude"|"Latitude", role: nil): number
---@overload fun(name: "LocalTime", role: nil): Datum
---@overload fun(name: "LocalTimeMS"|"OnPCSystemTimeOffset", role: nil): integer
---@overload fun(name: "YesterdayDawn"|"YesterdaySunrise"|"YesterdaySunset"|"YesterdayDusk"|"TodayDawn"|"TodaySunrise"|"TodaySunset"|"TodayDusk"|"TomorrowDawn"|"TomorrowSunrise"|"TomorrowSunset"|"TomorrowDusk", role: nil): Datum
---@overload fun(name: "DaylightDayStart"|"DaylightMonthStart"|"DaylightDayEnd"|"DaylightMonthEnd"|"DaylightSavingEnabled"|"AutoTimezone", role: nil): integer
---@overload fun(name: "TimeOfForwardTimeshift"|"TimeOfBackwardTimeshift", role: nil): TimePropertyValue
---@overload fun(name: "NtpTimeserverIP", role: nil): Manet.IP4
---@overload fun(name: "NtpTimeserverName", role: nil): string
---@overload fun(name: "TimeSyncMode", role: nil): integer
---@overload fun(name: "SetClock", role: nil): fun()
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DaylightSavingState"|"Hour"|"Minute"|"Second"|"Day"|"Month"|"Year"|"Timezone"|"TimezoneStr"|"Longitude"|"Latitude"|"LocalTime"|"LocalTimeMS"|"OnPCSystemTimeOffset"|"YesterdayDawn"|"YesterdaySunrise"|"YesterdaySunset"|"YesterdayDusk"|"TodayDawn"|"TodaySunrise"|"TodaySunset"|"TodayDusk"|"TomorrowDawn"|"TomorrowSunrise"|"TomorrowSunset"|"TomorrowDusk"|"DaylightDayStart"|"DaylightMonthStart"|"DaylightDayEnd"|"DaylightMonthEnd"|"DaylightSavingEnabled"|"AutoTimezone"|"TimeOfForwardTimeshift"|"TimeOfBackwardTimeshift"|"NtpTimeserverIP"|"NtpTimeserverName"|"TimeSyncMode"|"SetClock", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function TimeConfig:Get(name, role) end
