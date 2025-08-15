---@meta

---@class MainDialogSubTabs: MainDialogTabsBase
local MainDialogSubTabs = {}
---@return "MainDialogSubTabs"
function MainDialogSubTabs:GetClass() end
---@return "UIObject"
function MainDialogSubTabs:GetChildClass() end
---@generic T : MainDialogSubTabs
---@param class `T`
---@return boolean
function MainDialogSubTabs:IsClass(class) end