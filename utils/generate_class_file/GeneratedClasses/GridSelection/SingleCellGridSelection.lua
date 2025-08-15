---@meta

---@class SingleCellGridSelection: GridSelection
local SingleCellGridSelection = {}
---@return "SingleCellGridSelection"
function SingleCellGridSelection:GetClass() end
---@return "Object"
function SingleCellGridSelection:GetChildClass() end
---@generic T : SingleCellGridSelection
---@param class `T`
---@return boolean
function SingleCellGridSelection:IsClass(class) end