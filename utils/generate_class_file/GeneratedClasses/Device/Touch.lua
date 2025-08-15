---@meta

---@class Touch: Device
local Touch = {}
---@return "Touch"
function Touch:GetClass() end
---@return "Object"
function Touch:GetChildClass() end
---@generic T : Touch
---@param class `T`
---@return boolean
function Touch:IsClass(class) end