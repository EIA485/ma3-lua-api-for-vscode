---@meta

---@class FixtureFilterRuleCID: FixtureFilterRuleNumericRanges
local FixtureFilterRuleCID = {}
---@return "FixtureFilterRuleCID"
function FixtureFilterRuleCID:GetClass() end
---@return "Object"
function FixtureFilterRuleCID:GetChildClass() end
---@generic T : FixtureFilterRuleCID
---@param class `T`
---@return boolean
function FixtureFilterRuleCID:IsClass(class) end