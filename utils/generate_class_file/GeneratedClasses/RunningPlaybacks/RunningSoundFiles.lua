---@meta

---@class RunningSoundFiles: RunningPlaybacks
local RunningSoundFiles = {}
---@return "RunningSoundFiles"
function RunningSoundFiles:GetClass() end
---@return "Sound"
function RunningSoundFiles:GetChildClass() end
---@return RunningPlaybacksCollect
function RunningSoundFiles:Parent() end
---@param index integer
---@return Sound
function RunningSoundFiles:Ptr(index) end
---@return Sound[]
function RunningSoundFiles:Children() end
---@return Sound?
function RunningSoundFiles:CurrentChild() end
---@overload fun(name: integer, role: nil): Sound
function RunningSoundFiles:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function RunningSoundFiles:FindRecursive(name, class) end
