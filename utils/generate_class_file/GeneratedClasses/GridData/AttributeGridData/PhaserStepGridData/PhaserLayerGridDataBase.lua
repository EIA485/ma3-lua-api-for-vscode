---@meta

---@class PhaserLayerGridDataBase: PhaserStepGridData
local PhaserLayerGridDataBase = {}
---@return "PhaserLayerGridDataBase"
function PhaserLayerGridDataBase:GetClass() end
---@return "Object"
function PhaserLayerGridDataBase:GetChildClass() end
---@generic T : PhaserLayerGridDataBase
---@param class `T`
---@return boolean
function PhaserLayerGridDataBase:IsClass(class) end