---@meta

---@class ExpandedPresetGridData: FixtureChannelGridData
local ExpandedPresetGridData = {}
---@return "ExpandedPresetGridData"
function ExpandedPresetGridData:GetClass() end
---@return "Object"
function ExpandedPresetGridData:GetChildClass() end
---@generic T : ExpandedPresetGridData
---@param class `T`
---@return boolean
function ExpandedPresetGridData:IsClass(class) end