---@meta

---@class RdmGridData: DBObjectGridData
local RdmGridData = {}
---@return "RdmGridData"
function RdmGridData:GetClass() end
---@return "Object"
function RdmGridData:GetChildClass() end
---@generic T : RdmGridData
---@param class `T`
---@return boolean
function RdmGridData:IsClass(class) end