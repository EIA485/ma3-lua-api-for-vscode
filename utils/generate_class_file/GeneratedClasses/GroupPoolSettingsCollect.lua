---@meta

---@class GroupPoolSettingsCollect: Object
local GroupPoolSettingsCollect = {}
---@return "GroupPoolSettingsCollect"
function GroupPoolSettingsCollect:GetClass() end
---@return "GroupPoolSettings"
function GroupPoolSettingsCollect:GetChildClass() end
---@generic T : GroupPoolSettingsCollect
---@param class `T`
---@return boolean
function GroupPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return GroupPoolSettings
function GroupPoolSettingsCollect:Ptr(index) end
---@return GroupPoolSettings[]
function GroupPoolSettingsCollect:Children() end
---@return GroupPoolSettings?
function GroupPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): GroupPoolSettings
function GroupPoolSettingsCollect:Get(name, role) end
---@generic T : GroupPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GroupPoolSettings
function GroupPoolSettingsCollect:Create(index, class, undo) end
---@generic T : GroupPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GroupPoolSettings
function GroupPoolSettingsCollect:Append(class, undo, count) end
---@generic T : GroupPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GroupPoolSettings
function GroupPoolSettingsCollect:Acquire(class, undo) end
---@generic T : GroupPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GroupPoolSettings
---@deprecated use "Acquire" instead
function GroupPoolSettingsCollect:Aquire(class, undo) end
---@generic T : GroupPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GroupPoolSettings
function GroupPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : GroupPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GroupPoolSettings
function GroupPoolSettingsCollect:Find(class, undo) end
function GroupPoolSettingsCollect:SetChildren(property_name, property_value) end