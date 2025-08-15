---@meta

---@class VideoPoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local VideoPoolTitleButton = {}
---@return "VideoPoolTitleButton"
function VideoPoolTitleButton:GetClass() end
---@return "UIObject"
function VideoPoolTitleButton:GetChildClass() end
---@generic T : VideoPoolTitleButton
---@param class `T`
---@return boolean
function VideoPoolTitleButton:IsClass(class) end