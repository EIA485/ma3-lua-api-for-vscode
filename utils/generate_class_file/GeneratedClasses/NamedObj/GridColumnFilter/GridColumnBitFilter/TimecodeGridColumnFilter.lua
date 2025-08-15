---@meta

---@class TimecodeGridColumnFilter: GridColumnBitFilter
local TimecodeGridColumnFilter = {}
---@return "TimecodeGridColumnFilter"
function TimecodeGridColumnFilter:GetClass() end
---@return "Object"
function TimecodeGridColumnFilter:GetChildClass() end
---@generic T : TimecodeGridColumnFilter
---@param class `T`
---@return boolean
function TimecodeGridColumnFilter:IsClass(class) end