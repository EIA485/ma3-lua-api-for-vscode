---@meta

---@class TimecodeGridColumnConfiguration: DBObjectGridColumnConfiguration
local TimecodeGridColumnConfiguration = {}
---@return "TimecodeGridColumnConfiguration"
function TimecodeGridColumnConfiguration:GetClass() end
---@return "DBObjectGridLine"
function TimecodeGridColumnConfiguration:GetChildClass() end
---@generic T : TimecodeGridColumnConfiguration
---@param class `T`
---@return boolean
function TimecodeGridColumnConfiguration:IsClass(class) end