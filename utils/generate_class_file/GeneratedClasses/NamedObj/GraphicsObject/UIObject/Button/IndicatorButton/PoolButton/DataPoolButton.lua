---@meta

---@class DataPoolButton: PoolButton
local DataPoolButton = {}
---@return "DataPoolButton"
function DataPoolButton:GetClass() end
---@return "UIObject"
function DataPoolButton:GetChildClass() end
---@generic T : DataPoolButton
---@param class `T`
---@return boolean
function DataPoolButton:IsClass(class) end