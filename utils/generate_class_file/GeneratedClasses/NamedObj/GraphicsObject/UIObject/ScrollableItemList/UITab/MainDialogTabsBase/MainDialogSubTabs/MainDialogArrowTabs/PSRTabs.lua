---@meta

---@class PSRTabs: MainDialogArrowTabs
local PSRTabs = {}
---@return "PSRTabs"
function PSRTabs:GetClass() end
---@return "UIObject"
function PSRTabs:GetChildClass() end
---@generic T : PSRTabs
---@param class `T`
---@return boolean
function PSRTabs:IsClass(class) end