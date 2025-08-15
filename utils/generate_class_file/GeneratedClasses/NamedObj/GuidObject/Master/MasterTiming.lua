---@meta

---@class MasterTiming: Master
local MasterTiming = {}
---@return "MasterTiming"
function MasterTiming:GetClass() end
---@return "Object"
function MasterTiming:GetChildClass() end
---@generic T : MasterTiming
---@param class `T`
---@return boolean
function MasterTiming:IsClass(class) end