---@meta

---@class GeneratorPoolButton: PoolButton
local GeneratorPoolButton = {}
---@return "GeneratorPoolButton"
function GeneratorPoolButton:GetClass() end
---@return "UIObject"
function GeneratorPoolButton:GetChildClass() end
---@generic T : GeneratorPoolButton
---@param class `T`
---@return boolean
function GeneratorPoolButton:IsClass(class) end