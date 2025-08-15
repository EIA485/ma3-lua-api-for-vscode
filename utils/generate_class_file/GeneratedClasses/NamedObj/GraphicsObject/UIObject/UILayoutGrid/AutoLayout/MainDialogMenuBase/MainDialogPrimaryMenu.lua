---@meta

---@class MainDialogPrimaryMenu: MainDialogMenuBase
local MainDialogPrimaryMenu = {}
---@return "MainDialogPrimaryMenu"
function MainDialogPrimaryMenu:GetClass() end
---@return "UIObject"
function MainDialogPrimaryMenu:GetChildClass() end
---@generic T : MainDialogPrimaryMenu
---@param class `T`
---@return boolean
function MainDialogPrimaryMenu:IsClass(class) end