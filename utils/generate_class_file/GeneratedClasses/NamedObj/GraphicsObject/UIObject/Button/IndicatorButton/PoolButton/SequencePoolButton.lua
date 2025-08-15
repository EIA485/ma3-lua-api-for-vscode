---@meta

---@class SequencePoolButton: PoolButton
local SequencePoolButton = {}
---@return "SequencePoolButton"
function SequencePoolButton:GetClass() end
---@return "UIObject"
function SequencePoolButton:GetChildClass() end
---@generic T : SequencePoolButton
---@param class `T`
---@return boolean
function SequencePoolButton:IsClass(class) end