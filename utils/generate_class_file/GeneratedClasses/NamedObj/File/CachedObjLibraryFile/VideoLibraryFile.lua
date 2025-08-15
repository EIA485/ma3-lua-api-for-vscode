---@meta

---@class VideoLibraryFile: CachedObjLibraryFile Library cache entry for a video file.
local VideoLibraryFile = {}
---@return "VideoLibraryFile"
function VideoLibraryFile:GetClass() end
---@return "Object"
function VideoLibraryFile:GetChildClass() end
---@generic T : VideoLibraryFile
---@param class `T`
---@return boolean
function VideoLibraryFile:IsClass(class) end