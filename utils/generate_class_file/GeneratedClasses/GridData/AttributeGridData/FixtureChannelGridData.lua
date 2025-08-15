---@meta

---@class FixtureChannelGridData: AttributeGridData
local FixtureChannelGridData = {}
---@return "FixtureChannelGridData"
function FixtureChannelGridData:GetClass() end
---@return "Object"
function FixtureChannelGridData:GetChildClass() end
---@generic T : FixtureChannelGridData
---@param class `T`
---@return boolean
function FixtureChannelGridData:IsClass(class) end