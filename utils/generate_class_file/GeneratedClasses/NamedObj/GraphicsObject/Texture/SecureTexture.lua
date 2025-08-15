---@meta

---@class SecureTexture: Texture
local SecureTexture = {}
---@return "SecureTexture"
function SecureTexture:GetClass() end
---@return "GraphicsObject"
function SecureTexture:GetChildClass() end
---@generic T : SecureTexture
---@param class `T`
---@return boolean
function SecureTexture:IsClass(class) end