---@meta

---@class UniversePoolButton: PoolButton
local UniversePoolButton = {}
---@return "UniversePoolButton"
function UniversePoolButton:GetClass() end
---@return "UIObject"
function UniversePoolButton:GetChildClass() end
---@generic T : UniversePoolButton
---@param class `T`
---@return boolean
function UniversePoolButton:IsClass(class) end