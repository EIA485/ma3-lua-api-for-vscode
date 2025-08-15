---@meta

---@class SpecialExecTitleButton: AllExecTitleButton
local SpecialExecTitleButton = {}
---@return "SpecialExecTitleButton"
function SpecialExecTitleButton:GetClass() end
---@return "UIObject"
function SpecialExecTitleButton:GetChildClass() end
---@generic T : SpecialExecTitleButton
---@param class `T`
---@return boolean
function SpecialExecTitleButton:IsClass(class) end