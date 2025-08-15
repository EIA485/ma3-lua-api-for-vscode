---@meta

---@class ExecTitleButton: AllExecTitleButton
local ExecTitleButton = {}
---@return "ExecTitleButton"
function ExecTitleButton:GetClass() end
---@return "UIObject"
function ExecTitleButton:GetChildClass() end
---@generic T : ExecTitleButton
---@param class `T`
---@return boolean
function ExecTitleButton:IsClass(class) end
---@return ExecutorDisplay
function ExecTitleButton:Parent() end