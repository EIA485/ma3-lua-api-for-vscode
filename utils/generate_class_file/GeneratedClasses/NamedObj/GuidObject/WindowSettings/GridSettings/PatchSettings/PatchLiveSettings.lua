---@meta

---@class PatchLiveSettings: PatchSettings
local PatchLiveSettings = {}
---@return "PatchLiveSettings"
function PatchLiveSettings:GetClass() end
---@return "Object"
function PatchLiveSettings:GetChildClass() end
---@generic T : PatchLiveSettings
---@param class `T`
---@return boolean
function PatchLiveSettings:IsClass(class) end