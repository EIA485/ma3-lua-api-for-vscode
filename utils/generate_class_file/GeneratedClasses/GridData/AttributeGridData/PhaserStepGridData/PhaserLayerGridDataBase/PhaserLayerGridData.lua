---@meta

---@class PhaserLayerGridData: PhaserLayerGridDataBase
local PhaserLayerGridData = {}
---@return "PhaserLayerGridData"
function PhaserLayerGridData:GetClass() end
---@return "Object"
function PhaserLayerGridData:GetChildClass() end
---@generic T : PhaserLayerGridData
---@param class `T`
---@return boolean
function PhaserLayerGridData:IsClass(class) end