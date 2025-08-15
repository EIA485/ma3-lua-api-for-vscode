---@meta

---@class ETC: DMXProtocol
local ETC = {}
---@return "ETC"
function ETC:GetClass() end
---@return "Object"
function ETC:GetChildClass() end
---@generic T : ETC
---@param class `T`
---@return boolean
function ETC:IsClass(class) end