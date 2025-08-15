---@meta

---@class PopupItemButton: BaseItemButton
local PopupItemButton = {}
---@return "PopupItemButton"
function PopupItemButton:GetClass() end
---@return "UIObject"
function PopupItemButton:GetChildClass() end
---@generic T : PopupItemButton
---@param class `T`
---@return boolean
function PopupItemButton:IsClass(class) end