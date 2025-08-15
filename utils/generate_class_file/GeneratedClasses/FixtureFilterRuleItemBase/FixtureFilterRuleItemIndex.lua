---@meta

---@class FixtureFilterRuleItemIndex: FixtureFilterRuleItemBase
local FixtureFilterRuleItemIndex = {}
---@return "FixtureFilterRuleItemIndex"
function FixtureFilterRuleItemIndex:GetClass() end
---@return "Object"
function FixtureFilterRuleItemIndex:GetChildClass() end
---@generic T : FixtureFilterRuleItemIndex
---@param class `T`
---@return boolean
function FixtureFilterRuleItemIndex:IsClass(class) end