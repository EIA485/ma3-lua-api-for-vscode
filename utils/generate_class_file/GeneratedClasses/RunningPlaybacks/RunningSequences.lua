---@meta

---@class RunningSequences: RunningPlaybacks
local RunningSequences = {}
---@return "RunningSequences"
function RunningSequences:GetClass() end
---@return "Sequence"
function RunningSequences:GetChildClass() end
---@return RunningPlaybacksCollect
function RunningSequences:Parent() end
---@param index integer
---@return Sequence
function RunningSequences:Ptr(index) end
---@return Sequence[]
function RunningSequences:Children() end
---@return Sequence?
function RunningSequences:CurrentChild() end
---@overload fun(name: integer, role: nil): Sequence
function RunningSequences:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function RunningSequences:FindRecursive(name, class) end
