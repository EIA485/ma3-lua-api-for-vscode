---@meta

---@class SingleRowGridSelection: GridSelection
local SingleRowGridSelection = {}
---@return "SingleRowGridSelection"
function SingleRowGridSelection:GetClass() end
---@return "Object"
function SingleRowGridSelection:GetChildClass() end
---@generic T : SingleRowGridSelection
---@param class `T`
---@return boolean
function SingleRowGridSelection:IsClass(class) end