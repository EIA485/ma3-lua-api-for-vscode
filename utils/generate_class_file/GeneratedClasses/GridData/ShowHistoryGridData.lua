---@meta

---@class ShowHistoryGridData: GridData
local ShowHistoryGridData = {}
---@return "ShowHistoryGridData"
function ShowHistoryGridData:GetClass() end
---@return "Object"
function ShowHistoryGridData:GetChildClass() end
---@generic T : ShowHistoryGridData
---@param class `T`
---@return boolean
function ShowHistoryGridData:IsClass(class) end