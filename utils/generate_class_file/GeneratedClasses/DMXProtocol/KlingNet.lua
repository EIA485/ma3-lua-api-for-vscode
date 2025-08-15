---@meta

---@class KlingNet: DMXProtocol
local KlingNet = {}
---@return "KlingNet"
function KlingNet:GetClass() end
---@return "Object"
function KlingNet:GetChildClass() end
---@generic T : KlingNet
---@param class `T`
---@return boolean
function KlingNet:IsClass(class) end