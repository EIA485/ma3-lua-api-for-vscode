---@meta

---@class GridColumnRegistry: GridColumnConfigurationCollect
local GridColumnRegistry = {}
---@return "GridColumnRegistry"
function GridColumnRegistry:GetClass() end
---@return "GridColumnConfiguration"
function GridColumnRegistry:GetChildClass() end
---@generic T : GridColumnRegistry
---@param class `T`
---@return boolean
function GridColumnRegistry:IsClass(class) end