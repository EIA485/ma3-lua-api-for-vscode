---@meta

---@class TimecodePoolButton: PoolButton
local TimecodePoolButton = {}
---@return "TimecodePoolButton"
function TimecodePoolButton:GetClass() end
---@return "UIObject"
function TimecodePoolButton:GetChildClass() end
---@generic T : TimecodePoolButton
---@param class `T`
---@return boolean
function TimecodePoolButton:IsClass(class) end