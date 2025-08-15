---@meta

---@class ShowNet: DMXProtocol
local ShowNet = {}
---@return "ShowNet"
function ShowNet:GetClass() end
---@return "Object"
function ShowNet:GetChildClass() end
---@generic T : ShowNet
---@param class `T`
---@return boolean
function ShowNet:IsClass(class) end