---@meta

---@class PresetPoolButton: PoolButton
local PresetPoolButton = {}
---@return "PresetPoolButton"
function PresetPoolButton:GetClass() end
---@return "UIObject"
function PresetPoolButton:GetChildClass() end
---@generic T : PresetPoolButton
---@param class `T`
---@return boolean
function PresetPoolButton:IsClass(class) end