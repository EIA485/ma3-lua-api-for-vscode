---@meta

---@class FixtureFilterRuleFID: FixtureFilterRuleNumericRanges
local FixtureFilterRuleFID = {}
---@return "FixtureFilterRuleFID"
function FixtureFilterRuleFID:GetClass() end
---@return "Object"
function FixtureFilterRuleFID:GetChildClass() end
---@generic T : FixtureFilterRuleFID
---@param class `T`
---@return boolean
function FixtureFilterRuleFID:IsClass(class) end