---@meta

---@class TimecodeTextGridCell: DBObjectGridCell
local TimecodeTextGridCell = {}
---@return "TimecodeTextGridCell"
function TimecodeTextGridCell:GetClass() end
---@return "UIObject"
function TimecodeTextGridCell:GetChildClass() end
---@generic T : TimecodeTextGridCell
---@param class `T`
---@return boolean
function TimecodeTextGridCell:IsClass(class) end