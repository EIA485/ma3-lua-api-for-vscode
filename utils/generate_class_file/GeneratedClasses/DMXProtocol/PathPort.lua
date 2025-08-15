---@meta

---@class PathPort: DMXProtocol
local PathPort = {}
---@return "PathPort"
function PathPort:GetClass() end
---@return "Object"
function PathPort:GetChildClass() end
---@generic T : PathPort
---@param class `T`
---@return boolean
function PathPort:IsClass(class) end