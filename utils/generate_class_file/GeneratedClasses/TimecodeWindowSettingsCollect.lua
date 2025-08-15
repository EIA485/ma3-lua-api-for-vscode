---@meta

---@class TimecodeWindowSettingsCollect: Object
local TimecodeWindowSettingsCollect = {}
---@return "TimecodeWindowSettingsCollect"
function TimecodeWindowSettingsCollect:GetClass() end
---@return "TimecodeWindowSettings"
function TimecodeWindowSettingsCollect:GetChildClass() end
---@generic T : TimecodeWindowSettingsCollect
---@param class `T`
---@return boolean
function TimecodeWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Ptr(index) end
---@return TimecodeWindowSettings[]
function TimecodeWindowSettingsCollect:Children() end
---@return TimecodeWindowSettings?
function TimecodeWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Get(name, role) end
---@generic T : TimecodeWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Create(index, class, undo) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Append(class, undo, count) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Acquire(class, undo) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
---@deprecated use "Acquire" instead
function TimecodeWindowSettingsCollect:Aquire(class, undo) end
---@generic T : TimecodeWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "ViewMode", property_value: TCViewMode)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "CursorScrollMode", property_value: TimeCursorScrollMode)
---@overload fun(property_name: "TextMode", property_value: TCTextMode)
---@overload fun(property_name: "SelectionCount", property_value: string)
---@overload fun(property_name: "Tool", property_value: TimecodeTool)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "TextMode", property_value: TCTextMode)
---@overload fun(property_name: "ViewMode", property_value: TCViewMode)
---@overload fun(property_name: "CursorScrollMode", property_value: TimeCursorScrollMode)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "Timecode"|"CurrentTimecode"|"TimecodeHandle", property_value: Timecode)
---@overload fun(property_name: "Tool", property_value: TimecodeTool)
---@overload fun(property_name: "EventDiamond"|"EventSymbol"|"ShowTime"|"EventCueNumber"|"TimelineOnly"|"EventCueName"|"EventCmdIndicator"|"ShowTimeline"|"Markerintracks"|"FollowTimeCursor"|"PlaybackToolbar", property_value: YesNo|boolean)
---@overload fun(property_name: "SelectionCount", property_value: string)
function TimecodeWindowSettingsCollect:TimeDisplayFormat(property_name, property_value) end