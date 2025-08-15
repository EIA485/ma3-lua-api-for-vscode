---@meta

---@class AttributeRadioButton: RadioItemButtonWithIndicator
local AttributeRadioButton = {}
---@return "AttributeRadioButton"
function AttributeRadioButton:GetClass() end
---@return "UIObject"
function AttributeRadioButton:GetChildClass() end
---@generic T : AttributeRadioButton
---@param class `T`
---@return boolean
function AttributeRadioButton:IsClass(class) end