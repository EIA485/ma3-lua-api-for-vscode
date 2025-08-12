---@meta

---@class SmartViewPool: Object
local SmartViewPool = {}
---@return "SmartViewPool"
function SmartViewPool:GetClass() end
---@return "ChannelSet"
function SmartViewPool:GetChildClass() end
---@return UserProfile
function SmartViewPool:Parent() end
---@param index integer
---@return ChannelSet
function SmartViewPool:Ptr(index) end
---@return ChannelSet[]
function SmartViewPool:Children() end
---@return ChannelSet?
function SmartViewPool:CurrentChild() end
---@overload fun(name: integer, role: nil): ChannelSet
function SmartViewPool:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function SmartViewPool:FindRecursive(name, class) end
