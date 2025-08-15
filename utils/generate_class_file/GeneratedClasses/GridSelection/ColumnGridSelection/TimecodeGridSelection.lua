---@meta

---@class TimecodeGridSelection: ColumnGridSelection Selection model for a timecode text grid
local TimecodeGridSelection = {}
---@return "TimecodeGridSelection"
function TimecodeGridSelection:GetClass() end
---@return "Object"
function TimecodeGridSelection:GetChildClass() end
---@generic T : TimecodeGridSelection
---@param class `T`
---@return boolean
function TimecodeGridSelection:IsClass(class) end