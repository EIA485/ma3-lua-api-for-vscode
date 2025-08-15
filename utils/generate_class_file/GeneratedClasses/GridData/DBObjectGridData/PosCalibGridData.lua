---@meta

---@class PosCalibGridData: DBObjectGridData
local PosCalibGridData = {}
---@return "PosCalibGridData"
function PosCalibGridData:GetClass() end
---@return "Object"
function PosCalibGridData:GetChildClass() end
---@generic T : PosCalibGridData
---@param class `T`
---@return boolean
function PosCalibGridData:IsClass(class) end