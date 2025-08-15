---@meta

---@class AttributeGridData: GridData
local AttributeGridData = {}
---@return "AttributeGridData"
function AttributeGridData:GetClass() end
---@return "Object"
function AttributeGridData:GetChildClass() end
---@generic T : AttributeGridData
---@param class `T`
---@return boolean
function AttributeGridData:IsClass(class) end