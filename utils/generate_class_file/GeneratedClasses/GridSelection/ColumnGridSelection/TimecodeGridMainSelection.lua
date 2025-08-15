---@meta

---@class TimecodeGridMainSelection: ColumnGridSelection Selection model for a timecode main grid
local TimecodeGridMainSelection = {}
---@return "TimecodeGridMainSelection"
function TimecodeGridMainSelection:GetClass() end
---@return "Object"
function TimecodeGridMainSelection:GetChildClass() end
---@generic T : TimecodeGridMainSelection
---@param class `T`
---@return boolean
function TimecodeGridMainSelection:IsClass(class) end