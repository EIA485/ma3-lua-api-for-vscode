---@meta

---@class Timers: GenericPool
local Timers = {}
---@return "Timers"
function Timers:GetClass() end
---@return "Timer"
function Timers:GetChildClass() end
---@generic T : Timers
---@param class `T`
---@return boolean
function Timers:IsClass(class) end
---@return Pool
function Timers:Parent() end
---@param index integer
---@return Timer
function Timers:Ptr(index) end
---@return Timer[]
function Timers:Children() end
---@return Timer?
function Timers:CurrentChild() end
---@overload fun(name: integer, role: nil): Timer
function Timers:Get(name, role) end
---@generic T : Timer
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Timer
function Timers:Create(index, class, undo) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Timer
function Timers:Append(class, undo, count) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timer
function Timers:Acquire(class, undo) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timer
---@deprecated use "Acquire" instead
function Timers:Aquire(class, undo) end
---@generic T : Timer
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timer
function Timers:Insert(index, class, undo, count) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timer
function Timers:Find(class, undo) end
---@overload fun(property_name: "CountdownAlertRange", property_value: CountdownAlertRange)
---@overload fun(property_name: "TimerMode", property_value: TimerMode)
---@overload fun(property_name: "TimeReadout", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "RestartOption", property_value: RestartOption)
---@overload fun(property_name: "TimerLinkType", property_value: integer)
---@overload fun(property_name: "FrameFormat", property_value: FrameFormat)
---@overload fun(property_name: "TimerTriggerToken", property_value: TimerTriggerToken)
---@overload fun(property_name: "CountdownAlertType", property_value: CountdownAlertType)
---@overload fun(property_name: "CountdownAlertRange", property_value: CountdownAlertRange)
---@overload fun(property_name: "CountdownAlertType", property_value: CountdownAlertType)
---@overload fun(property_name: "FrameFormat", property_value: FrameFormat)
---@overload fun(property_name: "RestartOption", property_value: RestartOption)
---@overload fun(property_name: "TimeReadout", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "ElapsedTime"|"RemainingTime"|"AlertDuration"|"CountdownDuration", property_value: TimePropertyValue)
---@overload fun(property_name: "TimerMode", property_value: TimerMode)
---@overload fun(property_name: "TimerTriggerToken", property_value: TimerTriggerToken)
---@overload fun(property_name: "StopwatchColor"|"CountdownColor"|"ConfirmedColor", property_value: UColor)
---@overload fun(property_name: "TimerLinkType", property_value: integer)
---@overload fun(property_name: "AlertText"|"Type"|"User"|"AlertCommand", property_value: string)
function Timers:SetChildren(property_name, property_value) end