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
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(index: integer, class: "RunningSoundFiles", undo: Undo?): RunningSoundFiles
---@overload fun(index: integer, class: "MyRunningSoundFiles", undo: Undo?): MyRunningSoundFiles
---@overload fun(index: integer, class: "RunningTimers", undo: Undo?): RunningTimers
---@overload fun(index: integer, class: "MyRunningTimers", undo: Undo?): MyRunningTimers
---@overload fun(index: integer, class: "RunningPresets", undo: Undo?): RunningPresets
---@overload fun(index: integer, class: "MyRunningPresets", undo: Undo?): MyRunningPresets
---@overload fun(index: integer, class: "RunningTimecodes", undo: Undo?): RunningTimecodes
---@overload fun(index: integer, class: "MyRunningTimecodes", undo: Undo?): MyRunningTimecodes
---@overload fun(index: integer, class: "RunningMacros", undo: Undo?): RunningMacros
---@overload fun(index: integer, class: "MyRunningMacros", undo: Undo?): MyRunningMacros
---@overload fun(index: integer, class: "RunningSequences", undo: Undo?): RunningSequences
---@overload fun(index: integer, class: "MyRunningSequences", undo: Undo?): MyRunningSequences
---@overload fun(index: integer, class: nil, undo: Undo?): RunningPlaybacks
function RunningPlaybacksCollect:Create(index, class, undo) end
---@overload fun(class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(class: "RunningSoundFiles", undo: Undo?, count: integer?): RunningSoundFiles
---@overload fun(class: "MyRunningSoundFiles", undo: Undo?, count: integer?): MyRunningSoundFiles
---@overload fun(class: "RunningTimers", undo: Undo?, count: integer?): RunningTimers
---@overload fun(class: "MyRunningTimers", undo: Undo?, count: integer?): MyRunningTimers
---@overload fun(class: "RunningPresets", undo: Undo?, count: integer?): RunningPresets
---@overload fun(class: "MyRunningPresets", undo: Undo?, count: integer?): MyRunningPresets
---@overload fun(class: "RunningTimecodes", undo: Undo?, count: integer?): RunningTimecodes
---@overload fun(class: "MyRunningTimecodes", undo: Undo?, count: integer?): MyRunningTimecodes
---@overload fun(class: "RunningMacros", undo: Undo?, count: integer?): RunningMacros
---@overload fun(class: "MyRunningMacros", undo: Undo?, count: integer?): MyRunningMacros
---@overload fun(class: "RunningSequences", undo: Undo?, count: integer?): RunningSequences
---@overload fun(class: "MyRunningSequences", undo: Undo?, count: integer?): MyRunningSequences
---@overload fun(class: nil, undo: Undo?, count: integer?): RunningPlaybacks
function RunningPlaybacksCollect:Append(class, undo, count) end
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "RunningSoundFiles", undo: Undo?): RunningSoundFiles
---@overload fun(class: "MyRunningSoundFiles", undo: Undo?): MyRunningSoundFiles
---@overload fun(class: "RunningTimers", undo: Undo?): RunningTimers
---@overload fun(class: "MyRunningTimers", undo: Undo?): MyRunningTimers
---@overload fun(class: "RunningPresets", undo: Undo?): RunningPresets
---@overload fun(class: "MyRunningPresets", undo: Undo?): MyRunningPresets
---@overload fun(class: "RunningTimecodes", undo: Undo?): RunningTimecodes
---@overload fun(class: "MyRunningTimecodes", undo: Undo?): MyRunningTimecodes
---@overload fun(class: "RunningMacros", undo: Undo?): RunningMacros
---@overload fun(class: "MyRunningMacros", undo: Undo?): MyRunningMacros
---@overload fun(class: "RunningSequences", undo: Undo?): RunningSequences
---@overload fun(class: "MyRunningSequences", undo: Undo?): MyRunningSequences
---@overload fun(class: nil, undo: Undo?): RunningPlaybacks
function RunningPlaybacksCollect:Acquire(class, undo) end
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "RunningSoundFiles", undo: Undo?): RunningSoundFiles
---@overload fun(class: "MyRunningSoundFiles", undo: Undo?): MyRunningSoundFiles
---@overload fun(class: "RunningTimers", undo: Undo?): RunningTimers
---@overload fun(class: "MyRunningTimers", undo: Undo?): MyRunningTimers
---@overload fun(class: "RunningPresets", undo: Undo?): RunningPresets
---@overload fun(class: "MyRunningPresets", undo: Undo?): MyRunningPresets
---@overload fun(class: "RunningTimecodes", undo: Undo?): RunningTimecodes
---@overload fun(class: "MyRunningTimecodes", undo: Undo?): MyRunningTimecodes
---@overload fun(class: "RunningMacros", undo: Undo?): RunningMacros
---@overload fun(class: "MyRunningMacros", undo: Undo?): MyRunningMacros
---@overload fun(class: "RunningSequences", undo: Undo?): RunningSequences
---@overload fun(class: "MyRunningSequences", undo: Undo?): MyRunningSequences
---@overload fun(class: nil, undo: Undo?): RunningPlaybacks
---@deprecated use "Acquire" instead
function RunningPlaybacksCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(index: integer, class: "RunningSoundFiles", undo: Undo?, count: integer?): RunningSoundFiles
---@overload fun(index: integer, class: "MyRunningSoundFiles", undo: Undo?, count: integer?): MyRunningSoundFiles
---@overload fun(index: integer, class: "RunningTimers", undo: Undo?, count: integer?): RunningTimers
---@overload fun(index: integer, class: "MyRunningTimers", undo: Undo?, count: integer?): MyRunningTimers
---@overload fun(index: integer, class: "RunningPresets", undo: Undo?, count: integer?): RunningPresets
---@overload fun(index: integer, class: "MyRunningPresets", undo: Undo?, count: integer?): MyRunningPresets
---@overload fun(index: integer, class: "RunningTimecodes", undo: Undo?, count: integer?): RunningTimecodes
---@overload fun(index: integer, class: "MyRunningTimecodes", undo: Undo?, count: integer?): MyRunningTimecodes
---@overload fun(index: integer, class: "RunningMacros", undo: Undo?, count: integer?): RunningMacros
---@overload fun(index: integer, class: "MyRunningMacros", undo: Undo?, count: integer?): MyRunningMacros
---@overload fun(index: integer, class: "RunningSequences", undo: Undo?, count: integer?): RunningSequences
---@overload fun(index: integer, class: "MyRunningSequences", undo: Undo?, count: integer?): MyRunningSequences
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RunningPlaybacks
function RunningPlaybacksCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RunningPlaybacks"): RunningPlaybacks
---@overload fun(name: string, class: "RunningSoundFiles"): RunningSoundFiles
---@overload fun(name: string, class: "MyRunningSoundFiles"): MyRunningSoundFiles
---@overload fun(name: string, class: "RunningTimers"): RunningTimers
---@overload fun(name: string, class: "MyRunningTimers"): MyRunningTimers
---@overload fun(name: string, class: "RunningPresets"): RunningPresets
---@overload fun(name: string, class: "MyRunningPresets"): MyRunningPresets
---@overload fun(name: string, class: "RunningTimecodes"): RunningTimecodes
---@overload fun(name: string, class: "MyRunningTimecodes"): MyRunningTimecodes
---@overload fun(name: string, class: "RunningMacros"): RunningMacros
---@overload fun(name: string, class: "MyRunningMacros"): MyRunningMacros
---@overload fun(name: string, class: "RunningSequences"): RunningSequences
---@overload fun(name: string, class: "MyRunningSequences"): MyRunningSequences
---@overload fun(name: string, class: nil): RunningPlaybacks
function RunningPlaybacksCollect:Find(name, class) end
---@overload fun(name: string, class: "RunningPlaybacks"): RunningPlaybacks
---@overload fun(name: string, class: "RunningSoundFiles"): RunningSoundFiles
---@overload fun(name: string, class: "MyRunningSoundFiles"): MyRunningSoundFiles
---@overload fun(name: string, class: "RunningTimers"): RunningTimers
---@overload fun(name: string, class: "MyRunningTimers"): MyRunningTimers
---@overload fun(name: string, class: "RunningPresets"): RunningPresets
---@overload fun(name: string, class: "MyRunningPresets"): MyRunningPresets
---@overload fun(name: string, class: "RunningTimecodes"): RunningTimecodes
---@overload fun(name: string, class: "MyRunningTimecodes"): MyRunningTimecodes
---@overload fun(name: string, class: "RunningMacros"): RunningMacros
---@overload fun(name: string, class: "MyRunningMacros"): MyRunningMacros
---@overload fun(name: string, class: "RunningSequences"): RunningSequences
---@overload fun(name: string, class: "MyRunningSequences"): MyRunningSequences
---@overload fun(name: string, class: nil): Object
function RunningPlaybacksCollect:FindRecursive(name, class) end
