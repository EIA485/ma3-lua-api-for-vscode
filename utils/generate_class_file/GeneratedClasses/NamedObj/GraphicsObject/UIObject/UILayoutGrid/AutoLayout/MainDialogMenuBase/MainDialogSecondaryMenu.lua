---@meta

---@class MainDialogSecondaryMenu: MainDialogMenuBase
local MainDialogSecondaryMenu = {}
---@return "MainDialogSecondaryMenu"
function MainDialogSecondaryMenu:GetClass() end
---@return "UIObject"
function MainDialogSecondaryMenu:GetChildClass() end
---@generic T : MainDialogSecondaryMenu
---@param class `T`
---@return boolean
function MainDialogSecondaryMenu:IsClass(class) end