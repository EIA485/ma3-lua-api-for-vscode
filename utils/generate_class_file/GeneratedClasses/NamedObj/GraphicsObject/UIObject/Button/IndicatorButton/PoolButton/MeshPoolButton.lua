---@meta

---@class MeshPoolButton: PoolButton
local MeshPoolButton = {}
---@return "MeshPoolButton"
function MeshPoolButton:GetClass() end
---@return "UIObject"
function MeshPoolButton:GetChildClass() end
---@generic T : MeshPoolButton
---@param class `T`
---@return boolean
function MeshPoolButton:IsClass(class) end