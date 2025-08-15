---@meta

---@class FixtureSheetGridData: FixtureChannelGridData
local FixtureSheetGridData = {}
---@return "FixtureSheetGridData"
function FixtureSheetGridData:GetClass() end
---@return "Object"
function FixtureSheetGridData:GetChildClass() end
---@generic T : FixtureSheetGridData
---@param class `T`
---@return boolean
function FixtureSheetGridData:IsClass(class) end