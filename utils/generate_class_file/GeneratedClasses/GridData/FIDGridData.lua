---@meta

---@class FIDGridData: GridData Data model for Fixture ID list
local FIDGridData = {}
---@return "FIDGridData"
function FIDGridData:GetClass() end
---@return "Object"
function FIDGridData:GetChildClass() end
---@generic T : FIDGridData
---@param class `T`
---@return boolean
function FIDGridData:IsClass(class) end