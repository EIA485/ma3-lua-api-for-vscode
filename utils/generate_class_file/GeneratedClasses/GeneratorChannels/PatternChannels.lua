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
function PatternChannels:Create(index, class, undo) end
function PatternChannels:Append(class, undo, count) end
function PatternChannels:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function PatternChannels:Aquire(class, undo) end
function PatternChannels:Insert(index, class, undo, count) end
function PatternChannels:Find(class, undo) end