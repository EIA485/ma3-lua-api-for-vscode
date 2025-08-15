---@meta

---@class SeparatorSymbol: BaseSymbol A UI component used to show separator btween digits
local SeparatorSymbol = {}
---@return "SeparatorSymbol"
function SeparatorSymbol:GetClass() end
---@return "UIObject"
function SeparatorSymbol:GetChildClass() end
---@generic T : SeparatorSymbol
---@param class `T`
---@return boolean
function SeparatorSymbol:IsClass(class) end