---@meta

---@class VideoPoolButton: PoolButton
local VideoPoolButton = {}
---@return "VideoPoolButton"
function VideoPoolButton:GetClass() end
---@return "UIObject"
function VideoPoolButton:GetChildClass() end
---@generic T : VideoPoolButton
---@param class `T`
---@return boolean
function VideoPoolButton:IsClass(class) end