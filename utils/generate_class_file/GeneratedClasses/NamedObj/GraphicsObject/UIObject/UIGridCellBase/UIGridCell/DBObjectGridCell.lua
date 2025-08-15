---@meta

---@class DBObjectGridCell: UIGridCell
local DBObjectGridCell = {}
---@return "DBObjectGridCell"
function DBObjectGridCell:GetClass() end
---@return "UIObject"
function DBObjectGridCell:GetChildClass() end
---@generic T : DBObjectGridCell
---@param class `T`
---@return boolean
function DBObjectGridCell:IsClass(class) end