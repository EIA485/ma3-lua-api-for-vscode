---@meta

---@class MasterSelected: Master
local MasterSelected = {}
---@return "MasterSelected"
function MasterSelected:GetClass() end
---@return "Object"
function MasterSelected:GetChildClass() end
---@generic T : MasterSelected
---@param class `T`
---@return boolean
function MasterSelected:IsClass(class) end