---@meta

---@class RunningPlaybacksDBObjectGridData: DBObjectGridData
local RunningPlaybacksDBObjectGridData = {}
---@return "RunningPlaybacksDBObjectGridData"
function RunningPlaybacksDBObjectGridData:GetClass() end
---@return "Object"
function RunningPlaybacksDBObjectGridData:GetChildClass() end
---@generic T : RunningPlaybacksDBObjectGridData
---@param class `T`
---@return boolean
function RunningPlaybacksDBObjectGridData:IsClass(class) end