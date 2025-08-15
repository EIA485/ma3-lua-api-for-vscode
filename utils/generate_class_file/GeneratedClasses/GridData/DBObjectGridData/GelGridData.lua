---@meta

---@class GelGridData: DBObjectGridData
local GelGridData = {}
---@return "GelGridData"
function GelGridData:GetClass() end
---@return "Object"
function GelGridData:GetChildClass() end
---@generic T : GelGridData
---@param class `T`
---@return boolean
function GelGridData:IsClass(class) end