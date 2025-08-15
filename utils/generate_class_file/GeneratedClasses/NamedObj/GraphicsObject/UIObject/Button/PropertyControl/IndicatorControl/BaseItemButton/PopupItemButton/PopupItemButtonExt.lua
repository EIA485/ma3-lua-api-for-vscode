---@meta

---@class PopupItemButtonExt: PopupItemButton Button to be used for popups on console/onpc/pu
local PopupItemButtonExt = {}
---@return "PopupItemButtonExt"
function PopupItemButtonExt:GetClass() end
---@return "UIObject"
function PopupItemButtonExt:GetChildClass() end
---@generic T : PopupItemButtonExt
---@param class `T`
---@return boolean
function PopupItemButtonExt:IsClass(class) end