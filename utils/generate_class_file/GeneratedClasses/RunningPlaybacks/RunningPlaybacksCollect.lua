---@meta

---@class RunningPlaybacksCollect: RunningPlaybacks
local RunningPlaybacksCollect = {}
---@return "RunningPlaybacksCollect"
function RunningPlaybacksCollect:GetClass() end
---@return "RunningPlaybacks"
function RunningPlaybacksCollect:GetChildClass() end
---@return Temp
function RunningPlaybacksCollect:Parent() end
---@param index integer
---@return RunningPlaybacks
function RunningPlaybacksCollect:Ptr(index) end
---@return RunningPlaybacks[]
function RunningPlaybacksCollect:Children() end
---@return RunningPlaybacks?
function RunningPlaybacksCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): RunningPlaybacks
function RunningPlaybacksCollect:Get(name, role) end
---@generic T : RunningTimers|RunningTimecodes|RunningMacros|RunningPresets|RunningSoundFiles|RunningSequences
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(index: integer, class: nil, undo: Undo?): RunningPlaybacks
function RunningPlaybacksCollect:Create(index, class, undo) end
---@generic T : RunningTimers|RunningTimecodes|RunningMacros|RunningPresets|RunningSoundFiles|RunningSequences
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(class: nil, undo: Undo?, count: integer?): RunningPlaybacks
function RunningPlaybacksCollect:Append(class, undo, count) end
---@generic T : RunningTimers|RunningTimecodes|RunningMacros|RunningPresets|RunningSoundFiles|RunningSequences
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: nil, undo: Undo?): RunningPlaybacks
function RunningPlaybacksCollect:Acquire(class, undo) end
---@generic T : RunningTimers|RunningTimecodes|RunningMacros|RunningPresets|RunningSoundFiles|RunningSequences
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: nil, undo: Undo?): RunningPlaybacks
---@deprecated use "Acquire" instead
function RunningPlaybacksCollect:Aquire(class, undo) end
---@generic T : RunningTimers|RunningTimecodes|RunningMacros|RunningPresets|RunningSoundFiles|RunningSequences
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RunningPlaybacks
function RunningPlaybacksCollect:Insert(index, class, undo, count) end
---@generic T : RunningTimers|RunningTimecodes|RunningMacros|RunningPresets|RunningSoundFiles|RunningSequences
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: nil, undo: Undo?): RunningPlaybacks
function RunningPlaybacksCollect:Find(class, undo) end