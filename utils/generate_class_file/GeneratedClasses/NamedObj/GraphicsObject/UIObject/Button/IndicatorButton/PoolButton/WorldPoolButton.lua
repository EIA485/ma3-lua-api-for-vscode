---@meta

---@class WorldPoolButton: PoolButton
local WorldPoolButton = {}
---@return "WorldPoolButton"
function WorldPoolButton:GetClass() end
---@return "UIObject"
function WorldPoolButton:GetChildClass() end
---@generic T : WorldPoolButton
---@param class `T`
---@return boolean
function WorldPoolButton:IsClass(class) end