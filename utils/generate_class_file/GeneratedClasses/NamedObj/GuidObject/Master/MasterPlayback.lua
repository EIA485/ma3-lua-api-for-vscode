---@meta

---@class MasterPlayback: Master
local MasterPlayback = {}
---@return "MasterPlayback"
function MasterPlayback:GetClass() end
---@return "Object"
function MasterPlayback:GetChildClass() end
---@generic T : MasterPlayback
---@param class `T`
---@return boolean
function MasterPlayback:IsClass(class) end