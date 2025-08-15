---@meta

---@class NetworkSpeedTestGridCell: UIGridCell
local NetworkSpeedTestGridCell = {}
---@return "NetworkSpeedTestGridCell"
function NetworkSpeedTestGridCell:GetClass() end
---@return "UIObject"
function NetworkSpeedTestGridCell:GetChildClass() end
---@generic T : NetworkSpeedTestGridCell
---@param class `T`
---@return boolean
function NetworkSpeedTestGridCell:IsClass(class) end