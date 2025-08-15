---@meta

---@class CameraPoolButton: PoolButton
local CameraPoolButton = {}
---@return "CameraPoolButton"
function CameraPoolButton:GetClass() end
---@return "UIObject"
function CameraPoolButton:GetChildClass() end
---@generic T : CameraPoolButton
---@param class `T`
---@return boolean
function CameraPoolButton:IsClass(class) end