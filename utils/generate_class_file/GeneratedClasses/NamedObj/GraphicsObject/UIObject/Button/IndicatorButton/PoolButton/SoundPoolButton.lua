---@meta

---@class SoundPoolButton: PoolButton
local SoundPoolButton = {}
---@return "SoundPoolButton"
function SoundPoolButton:GetClass() end
---@return "UIObject"
function SoundPoolButton:GetChildClass() end
---@generic T : SoundPoolButton
---@param class `T`
---@return boolean
function SoundPoolButton:IsClass(class) end