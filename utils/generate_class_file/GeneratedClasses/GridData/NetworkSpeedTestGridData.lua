---@meta

---@class NetworkSpeedTestGridData: GridData
local NetworkSpeedTestGridData = {}
---@return "NetworkSpeedTestGridData"
function NetworkSpeedTestGridData:GetClass() end
---@return "Object"
function NetworkSpeedTestGridData:GetChildClass() end
---@generic T : NetworkSpeedTestGridData
---@param class `T`
---@return boolean
function NetworkSpeedTestGridData:IsClass(class) end