---@meta

---@class CloneFilterGridData: DBObjectGridData
local CloneFilterGridData = {}
---@return "CloneFilterGridData"
function CloneFilterGridData:GetClass() end
---@return "Object"
function CloneFilterGridData:GetChildClass() end
---@generic T : CloneFilterGridData
---@param class `T`
---@return boolean
function CloneFilterGridData:IsClass(class) end