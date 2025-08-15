---@meta

---@class MasterGrand: Master
local MasterGrand = {}
---@return "MasterGrand"
function MasterGrand:GetClass() end
---@return "Object"
function MasterGrand:GetChildClass() end
---@generic T : MasterGrand
---@param class `T`
---@return boolean
function MasterGrand:IsClass(class) end