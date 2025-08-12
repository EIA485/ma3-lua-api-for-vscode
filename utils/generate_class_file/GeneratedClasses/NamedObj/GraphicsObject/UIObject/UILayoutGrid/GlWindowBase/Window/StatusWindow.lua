---@meta

---@class StatusWindow: Window An abstract status UI component
local StatusWindow = {}
---@return "StatusWindow"
function StatusWindow:GetClass() end
---@return "UIObject"
function StatusWindow:GetChildClass() end
