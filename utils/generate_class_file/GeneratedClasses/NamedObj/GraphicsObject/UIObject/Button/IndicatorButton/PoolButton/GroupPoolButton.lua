---@meta

---@class GroupPoolButton: PoolButton
local GroupPoolButton = {}
---@return "GroupPoolButton"
function GroupPoolButton:GetClass() end
---@return "UIObject"
function GroupPoolButton:GetChildClass() end
---@generic T : GroupPoolButton
---@param class `T`
---@return boolean
function GroupPoolButton:IsClass(class) end