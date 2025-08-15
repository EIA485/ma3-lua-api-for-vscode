---@meta

---@class UserMesh: Mesh
local UserMesh = {}
---@return "UserMesh"
function UserMesh:GetClass() end
---@return "Material"
function UserMesh:GetChildClass() end
---@generic T : UserMesh
---@param class `T`
---@return boolean
function UserMesh:IsClass(class) end