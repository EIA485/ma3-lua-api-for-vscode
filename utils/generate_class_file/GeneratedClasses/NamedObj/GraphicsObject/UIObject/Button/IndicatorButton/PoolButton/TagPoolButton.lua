---@meta

---@class TagPoolButton: PoolButton
local TagPoolButton = {}
---@return "TagPoolButton"
function TagPoolButton:GetClass() end
---@return "UIObject"
function TagPoolButton:GetChildClass() end
---@generic T : TagPoolButton
---@param class `T`
---@return boolean
function TagPoolButton:IsClass(class) end