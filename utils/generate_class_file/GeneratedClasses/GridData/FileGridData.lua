---@meta

---@class FileGridData: GridData
local FileGridData = {}
---@return "FileGridData"
function FileGridData:GetClass() end
---@return "Object"
function FileGridData:GetChildClass() end
---@generic T : FileGridData
---@param class `T`
---@return boolean
function FileGridData:IsClass(class) end