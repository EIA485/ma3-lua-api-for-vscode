---@meta

---@class OutputConfigGridData: DBObjectGridData
local OutputConfigGridData = {}
---@return "OutputConfigGridData"
function OutputConfigGridData:GetClass() end
---@return "Object"
function OutputConfigGridData:GetChildClass() end
---@generic T : OutputConfigGridData
---@param class `T`
---@return boolean
function OutputConfigGridData:IsClass(class) end