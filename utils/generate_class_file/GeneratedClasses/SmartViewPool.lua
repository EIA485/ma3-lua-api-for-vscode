---@meta

---@class SmartViewPool: Object
local SmartViewPool = {}
---@return "SmartViewPool"
function SmartViewPool:GetClass() end
---@return "ChannelSet"
function SmartViewPool:GetChildClass() end
---@generic T : SmartViewPool
---@param class `T`
---@return boolean
function SmartViewPool:IsClass(class) end
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
function SmartViewPool:Create(index, class, undo) end
function SmartViewPool:Append(class, undo, count) end
function SmartViewPool:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function SmartViewPool:Aquire(class, undo) end
function SmartViewPool:Insert(index, class, undo, count) end
function SmartViewPool:Find(class, undo) end
function SmartViewPool:SetChildren(property_name, property_value) end
function SmartViewPool:SetChildrenRecursive(property_name, property_value) end