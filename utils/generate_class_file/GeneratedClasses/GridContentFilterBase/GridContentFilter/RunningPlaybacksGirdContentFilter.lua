---@meta

---@class RunningPlaybacksGirdContentFilter: GridContentFilter
local RunningPlaybacksGirdContentFilter = {}
---@return "RunningPlaybacksGirdContentFilter"
function RunningPlaybacksGirdContentFilter:GetClass() end
---@return "GridContentFilterItem"
function RunningPlaybacksGirdContentFilter:GetChildClass() end
---@generic T : RunningPlaybacksGirdContentFilter
---@param class `T`
---@return boolean
function RunningPlaybacksGirdContentFilter:IsClass(class) end