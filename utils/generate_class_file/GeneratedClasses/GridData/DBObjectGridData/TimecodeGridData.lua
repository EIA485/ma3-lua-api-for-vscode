---@meta

---@class TimecodeGridData: DBObjectGridData Data model for a timecode
local TimecodeGridData = {}
---@return "TimecodeGridData"
function TimecodeGridData:GetClass() end
---@return "Object"
function TimecodeGridData:GetChildClass() end
---@generic T : TimecodeGridData
---@param class `T`
---@return boolean
function TimecodeGridData:IsClass(class) end