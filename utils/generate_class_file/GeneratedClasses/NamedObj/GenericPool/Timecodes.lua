---@meta

---@class Timecodes: GenericPool
local Timecodes = {}
---@return "Timecodes"
function Timecodes:GetClass() end
---@return "Timecode"
function Timecodes:GetChildClass() end
---@generic T : Timecodes
---@param class `T`
---@return boolean
function Timecodes:IsClass(class) end
---@return Pool
function Timecodes:Parent() end
---@param index integer
---@return Timecode
function Timecodes:Ptr(index) end
---@return Timecode[]
function Timecodes:Children() end
---@return Timecode?
function Timecodes:CurrentChild() end
---@overload fun(name: integer, role: nil): Timecode
function Timecodes:Get(name, role) end
---@generic T : Timecode
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Timecode
function Timecodes:Create(index, class, undo) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Timecode
function Timecodes:Append(class, undo, count) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timecode
function Timecodes:Acquire(class, undo) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timecode
---@deprecated use "Acquire" instead
function Timecodes:Aquire(class, undo) end
---@generic T : Timecode
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timecode
function Timecodes:Insert(index, class, undo, count) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timecode
function Timecodes:Find(class, undo) end
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "LoopMode", property_value: LoopMode)
---@overload fun(property_name: "PlaybackandRecord", property_value: EventsPlaybackRecord)
---@overload fun(property_name: "TimeMarkers", property_value: Track)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "SwitchOff", property_value: PlaybacksOff)
---@overload fun(property_name: "Goto", property_value: RecordGo)
---@overload fun(property_name: "PlaybackandRecord", property_value: EventsPlaybackRecord)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "LoopMode", property_value: LoopMode)
---@overload fun(property_name: "SwitchOff", property_value: PlaybacksOff)
---@overload fun(property_name: "Goto", property_value: RecordGo)
---@overload fun(property_name: "Cursor"|"OffsetTCSlot"|"Duration", property_value: SignedTimePropertyValue)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "TimeMarkers", property_value: Track)
---@overload fun(property_name: "AssertPrevEvents"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"AutoStop"|"RecordRemoteEvents"|"AutoStart", property_value: YesNo|boolean)
---@overload fun(property_name: "LoopCount"|"TCSlot"|"UserBits", property_value: integer)
---@overload fun(property_name: "User"|"Type", property_value: string)
function Timecodes:SetChildren(property_name, property_value) end