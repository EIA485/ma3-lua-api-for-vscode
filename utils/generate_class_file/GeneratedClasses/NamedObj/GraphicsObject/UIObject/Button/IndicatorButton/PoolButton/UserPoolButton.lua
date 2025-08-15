---@meta

---@class UserPoolButton: PoolButton
local UserPoolButton = {}
---@return "UserPoolButton"
function UserPoolButton:GetClass() end
---@return "UIObject"
function UserPoolButton:GetChildClass() end
---@generic T : UserPoolButton
---@param class `T`
---@return boolean
function UserPoolButton:IsClass(class) end