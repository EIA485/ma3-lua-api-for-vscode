---@meta

---@class LayoutGridData: DBObjectGridData
local LayoutGridData = {}
---@return "LayoutGridData"
function LayoutGridData:GetClass() end
---@return "Object"
function LayoutGridData:GetChildClass() end
---@generic T : LayoutGridData
---@param class `T`
---@return boolean
function LayoutGridData:IsClass(class) end