---@meta

---@class MultiRowGridSelection: ColumnGridSelection
local MultiRowGridSelection = {}
---@return "MultiRowGridSelection"
function MultiRowGridSelection:GetClass() end
---@return "Object"
function MultiRowGridSelection:GetChildClass() end
---@generic T : MultiRowGridSelection
---@param class `T`
---@return boolean
function MultiRowGridSelection:IsClass(class) end