---@meta

---@class UpdateGridData: DBObjectGridData
local UpdateGridData = {}
---@return "UpdateGridData"
function UpdateGridData:GetClass() end
---@return "Object"
function UpdateGridData:GetChildClass() end
---@generic T : UpdateGridData
---@param class `T`
---@return boolean
function UpdateGridData:IsClass(class) end