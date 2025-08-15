---@meta

---@class MaterialPoolButton: PoolButton
local MaterialPoolButton = {}
---@return "MaterialPoolButton"
function MaterialPoolButton:GetClass() end
---@return "UIObject"
function MaterialPoolButton:GetChildClass() end
---@generic T : MaterialPoolButton
---@param class `T`
---@return boolean
function MaterialPoolButton:IsClass(class) end