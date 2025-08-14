---@meta

---@class RunningTimecodes: RunningPlaybacks
local RunningTimecodes = {}
---@return "RunningTimecodes"
function RunningTimecodes:GetClass() end
---@return "Timecode"
function RunningTimecodes:GetChildClass() end
---@return RunningPlaybacksCollect
function RunningTimecodes:Parent() end
---@param index integer
---@return Timecode
function RunningTimecodes:Ptr(index) end
---@return Timecode[]
function RunningTimecodes:Children() end
---@return Timecode?
function RunningTimecodes:CurrentChild() end
---@overload fun(name: integer, role: nil): Timecode
function RunningTimecodes:Get(name, role) end
function RunningTimecodes:Create(index, class, undo) end
function RunningTimecodes:Append(class, undo, count) end
function RunningTimecodes:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function RunningTimecodes:Aquire(class, undo) end
function RunningTimecodes:Insert(index, class, undo, count) end
function RunningTimecodes:Find(class, undo) end