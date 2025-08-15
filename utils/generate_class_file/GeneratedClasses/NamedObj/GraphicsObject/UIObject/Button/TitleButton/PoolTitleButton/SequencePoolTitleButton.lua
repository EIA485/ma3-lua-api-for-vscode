---@meta

---@class SequencePoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local SequencePoolTitleButton = {}
---@return "SequencePoolTitleButton"
function SequencePoolTitleButton:GetClass() end
---@return "UIObject"
function SequencePoolTitleButton:GetChildClass() end
---@generic T : SequencePoolTitleButton
---@param class `T`
---@return boolean
function SequencePoolTitleButton:IsClass(class) end