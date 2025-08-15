---@meta

---@class FixtureChannelGridColumnConfiguration: GridColumnConfiguration
local FixtureChannelGridColumnConfiguration = {}
---@return "FixtureChannelGridColumnConfiguration"
function FixtureChannelGridColumnConfiguration:GetClass() end
---@return "GridLine"
function FixtureChannelGridColumnConfiguration:GetChildClass() end
---@generic T : FixtureChannelGridColumnConfiguration
---@param class `T`
---@return boolean
function FixtureChannelGridColumnConfiguration:IsClass(class) end