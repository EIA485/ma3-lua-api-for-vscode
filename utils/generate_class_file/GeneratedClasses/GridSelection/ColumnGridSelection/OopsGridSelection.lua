---@meta

---@class OopsGridSelection: ColumnGridSelection
local OopsGridSelection = {}
---@return "OopsGridSelection"
function OopsGridSelection:GetClass() end
---@return "Object"
function OopsGridSelection:GetChildClass() end
---@generic T : OopsGridSelection
---@param class `T`
---@return boolean
function OopsGridSelection:IsClass(class) end