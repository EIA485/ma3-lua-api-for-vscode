---@meta

---@class ContentManager: Textures
local ContentManager = {}
---@return "ContentManager"
function ContentManager:GetClass() end
---@return "Texture"
function ContentManager:GetChildClass() end
---@generic T : ContentManager
---@param class `T`
---@return boolean
function ContentManager:IsClass(class) end