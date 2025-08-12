---@meta

---@class PatternChannels: GeneratorChannels
local PatternChannels = {}
---@return "PatternChannels"
function PatternChannels:GetClass() end
---@return "PatternChannel"
function PatternChannels:GetChildClass() end
---@param index integer
---@return PatternChannel
function PatternChannels:Ptr(index) end
---@return PatternChannel[]
function PatternChannels:Children() end
---@return PatternChannel?
function PatternChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): PatternChannel
function PatternChannels:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function PatternChannels:FindRecursive(name, class) end
