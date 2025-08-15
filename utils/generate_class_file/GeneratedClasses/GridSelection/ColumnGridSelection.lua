---@meta

---@class ColumnGridSelection: GridSelection
local ColumnGridSelection = {}
---@return "ColumnGridSelection"
function ColumnGridSelection:GetClass() end
---@return "Object"
function ColumnGridSelection:GetChildClass() end
---@generic T : ColumnGridSelection
---@param class `T`
---@return boolean
function ColumnGridSelection:IsClass(class) end