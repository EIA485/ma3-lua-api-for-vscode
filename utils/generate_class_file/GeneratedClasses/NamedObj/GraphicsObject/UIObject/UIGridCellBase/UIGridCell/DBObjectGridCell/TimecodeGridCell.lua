---@meta

---@class TimecodeGridCell: DBObjectGridCell
local TimecodeGridCell = {}
---@return "TimecodeGridCell"
function TimecodeGridCell:GetClass() end
---@return "UIObject"
function TimecodeGridCell:GetChildClass() end
---@generic T : TimecodeGridCell
---@param class `T`
---@return boolean
function TimecodeGridCell:IsClass(class) end