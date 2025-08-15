---@meta

---@class CloneGridData: GridData
local CloneGridData = {}
---@return "CloneGridData"
function CloneGridData:GetClass() end
---@return "Object"
function CloneGridData:GetChildClass() end
---@generic T : CloneGridData
---@param class `T`
---@return boolean
function CloneGridData:IsClass(class) end