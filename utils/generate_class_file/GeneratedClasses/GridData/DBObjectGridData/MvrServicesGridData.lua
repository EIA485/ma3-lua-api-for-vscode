---@meta

---@class MvrServicesGridData: DBObjectGridData
local MvrServicesGridData = {}
---@return "MvrServicesGridData"
function MvrServicesGridData:GetClass() end
---@return "Object"
function MvrServicesGridData:GetChildClass() end
---@generic T : MvrServicesGridData
---@param class `T`
---@return boolean
function MvrServicesGridData:IsClass(class) end