---@meta

---@class MatricksPoolButton: PoolButton
local MatricksPoolButton = {}
---@return "MatricksPoolButton"
function MatricksPoolButton:GetClass() end
---@return "UIObject"
function MatricksPoolButton:GetChildClass() end
---@generic T : MatricksPoolButton
---@param class `T`
---@return boolean
function MatricksPoolButton:IsClass(class) end