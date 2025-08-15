---@meta

---@class FileGridCell: UIGridCell
local FileGridCell = {}
---@return "FileGridCell"
function FileGridCell:GetClass() end
---@return "UIObject"
function FileGridCell:GetChildClass() end
---@generic T : FileGridCell
---@param class `T`
---@return boolean
function FileGridCell:IsClass(class) end