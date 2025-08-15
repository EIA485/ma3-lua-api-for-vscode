---@meta

---@class ListItemButton: BaseItemButton
local ListItemButton = {}
---@return "ListItemButton"
function ListItemButton:GetClass() end
---@return "UIObject"
function ListItemButton:GetChildClass() end
---@generic T : ListItemButton
---@param class `T`
---@return boolean
function ListItemButton:IsClass(class) end