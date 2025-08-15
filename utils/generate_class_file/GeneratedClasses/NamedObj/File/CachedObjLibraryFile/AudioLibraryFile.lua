---@meta

---@class AudioLibraryFile: CachedObjLibraryFile Library cache entry for a sound file.
local AudioLibraryFile = {}
---@return "AudioLibraryFile"
function AudioLibraryFile:GetClass() end
---@return "Object"
function AudioLibraryFile:GetChildClass() end
---@generic T : AudioLibraryFile
---@param class `T`
---@return boolean
function AudioLibraryFile:IsClass(class) end