---@meta

---@class FlexGridSelection: GridSelection
local FlexGridSelection = {}
---@return "FlexGridSelection"
function FlexGridSelection:GetClass() end
---@return "Object"
function FlexGridSelection:GetChildClass() end
---@generic T : FlexGridSelection
---@param class `T`
---@return boolean
function FlexGridSelection:IsClass(class) end