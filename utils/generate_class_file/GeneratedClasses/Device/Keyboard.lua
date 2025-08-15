---@meta

---@class Keyboard: Device
local Keyboard = {}
---@return "Keyboard"
function Keyboard:GetClass() end
---@return "Object"
function Keyboard:GetChildClass() end
---@generic T : Keyboard
---@param class `T`
---@return boolean
function Keyboard:IsClass(class) end