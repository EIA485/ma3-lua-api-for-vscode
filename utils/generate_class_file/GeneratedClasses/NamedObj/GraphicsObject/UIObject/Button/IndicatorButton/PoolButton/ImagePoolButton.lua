---@meta

---@class ImagePoolButton: PoolButton
local ImagePoolButton = {}
---@return "ImagePoolButton"
function ImagePoolButton:GetClass() end
---@return "UIObject"
function ImagePoolButton:GetChildClass() end
---@generic T : ImagePoolButton
---@param class `T`
---@return boolean
function ImagePoolButton:IsClass(class) end