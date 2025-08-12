---@meta

---@class RunningMacros: RunningPlaybacks
local RunningMacros = {}
---@return "RunningMacros"
function RunningMacros:GetClass() end
---@return "Macro"
function RunningMacros:GetChildClass() end
---@return RunningPlaybacksCollect
function RunningMacros:Parent() end
---@param index integer
---@return Macro
function RunningMacros:Ptr(index) end
---@return Macro[]
function RunningMacros:Children() end
---@return Macro?
function RunningMacros:CurrentChild() end
---@overload fun(name: integer, role: nil): Macro
function RunningMacros:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function RunningMacros:FindRecursive(name, class) end
