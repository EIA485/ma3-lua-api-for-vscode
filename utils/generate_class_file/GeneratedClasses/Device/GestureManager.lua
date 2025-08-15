---@meta

---@class GestureManager: Device
local GestureManager = {}
---@return "GestureManager"
function GestureManager:GetClass() end
---@return "Object"
function GestureManager:GetChildClass() end
---@generic T : GestureManager
---@param class `T`
---@return boolean
function GestureManager:IsClass(class) end