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
---@overload fun(name: string, class: nil): Object
function RunningTimecodes:FindRecursive(name, class) end
