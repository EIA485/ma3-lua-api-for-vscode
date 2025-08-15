---@meta

---@class UserImageLibraryFile: CachedObjLibraryFile Library cache entry for an image file.
local UserImageLibraryFile = {}
---@return "UserImageLibraryFile"
function UserImageLibraryFile:GetClass() end
---@return "Object"
function UserImageLibraryFile:GetChildClass() end
---@generic T : UserImageLibraryFile
---@param class `T`
---@return boolean
function UserImageLibraryFile:IsClass(class) end