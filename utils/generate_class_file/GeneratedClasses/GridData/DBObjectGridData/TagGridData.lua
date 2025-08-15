---@meta

---@class TagGridData: DBObjectGridData
local TagGridData = {}
---@return "TagGridData"
function TagGridData:GetClass() end
---@return "Object"
function TagGridData:GetChildClass() end
---@generic T : TagGridData
---@param class `T`
---@return boolean
function TagGridData:IsClass(class) end