---@meta

---@class TimecodeTextGridData: DBObjectGridData
local TimecodeTextGridData = {}
---@return "TimecodeTextGridData"
function TimecodeTextGridData:GetClass() end
---@return "Object"
function TimecodeTextGridData:GetChildClass() end
---@generic T : TimecodeTextGridData
---@param class `T`
---@return boolean
function TimecodeTextGridData:IsClass(class) end