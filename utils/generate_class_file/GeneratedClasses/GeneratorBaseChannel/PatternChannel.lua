---@meta

---@class PatternChannel: GeneratorBaseChannel
local PatternChannel = {}
---@return "PatternChannel"
function PatternChannel:GetClass() end
---@return "Object"
function PatternChannel:GetChildClass() end
---@generic T : PatternChannel
---@param class `T`
---@return boolean
function PatternChannel:IsClass(class) end
---@return Pattern
function PatternChannel:Parent() end