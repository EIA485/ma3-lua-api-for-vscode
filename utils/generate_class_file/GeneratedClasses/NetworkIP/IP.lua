---@meta

---@class IP: NetworkIP
local IP = {}
---@return "IP"
function IP:GetClass() end
---@return "Object"
function IP:GetChildClass() end
---@generic T : IP
---@param class `T`
---@return boolean
function IP:IsClass(class) end
---@return NetworkInterface
function IP:Parent() end