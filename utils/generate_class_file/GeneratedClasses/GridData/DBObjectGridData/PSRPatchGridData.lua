---@meta

---@class PSRPatchGridData: DBObjectGridData
local PSRPatchGridData = {}
---@return "PSRPatchGridData"
function PSRPatchGridData:GetClass() end
---@return "Object"
function PSRPatchGridData:GetChildClass() end
---@generic T : PSRPatchGridData
---@param class `T`
---@return boolean
function PSRPatchGridData:IsClass(class) end