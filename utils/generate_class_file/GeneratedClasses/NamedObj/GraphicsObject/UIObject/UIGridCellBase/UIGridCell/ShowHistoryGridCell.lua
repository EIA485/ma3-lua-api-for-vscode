---@meta

---@class ShowHistoryGridCell: UIGridCell
local ShowHistoryGridCell = {}
---@return "ShowHistoryGridCell"
function ShowHistoryGridCell:GetClass() end
---@return "UIObject"
function ShowHistoryGridCell:GetChildClass() end
---@generic T : ShowHistoryGridCell
---@param class `T`
---@return boolean
function ShowHistoryGridCell:IsClass(class) end