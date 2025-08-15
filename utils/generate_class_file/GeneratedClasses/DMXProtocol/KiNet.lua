---@meta

---@class KiNet: DMXProtocol
local KiNet = {}
---@return "KiNet"
function KiNet:GetClass() end
---@return "Object"
function KiNet:GetChildClass() end
---@generic T : KiNet
---@param class `T`
---@return boolean
function KiNet:IsClass(class) end