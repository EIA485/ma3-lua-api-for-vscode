---@meta

---@class GroupPoolSettingsCollect: Object
local GroupPoolSettingsCollect = {}
---@return "GroupPoolSettingsCollect"
function GroupPoolSettingsCollect:GetClass() end
---@return "GroupPoolSettings"
function GroupPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return GroupPoolSettings
function GroupPoolSettingsCollect:Ptr(index) end
---@return GroupPoolSettings[]
function GroupPoolSettingsCollect:Children() end
---@return GroupPoolSettings?
function GroupPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): GroupPoolSettings
function GroupPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "GroupPoolSettings", undo: Undo?): GroupPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): GroupPoolSettings
function GroupPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "GroupPoolSettings", undo: Undo?, count: integer?): GroupPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): GroupPoolSettings
function GroupPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "GroupPoolSettings", undo: Undo?): GroupPoolSettings
---@overload fun(class: nil, undo: Undo?): GroupPoolSettings
function GroupPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "GroupPoolSettings", undo: Undo?): GroupPoolSettings
---@overload fun(class: nil, undo: Undo?): GroupPoolSettings
---@deprecated use "Acquire" instead
function GroupPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "GroupPoolSettings", undo: Undo?, count: integer?): GroupPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GroupPoolSettings
function GroupPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GroupPoolSettings"): GroupPoolSettings
---@overload fun(name: string, class: nil): GroupPoolSettings
function GroupPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "GroupPoolSettings"): GroupPoolSettings
---@overload fun(name: string, class: nil): Object
function GroupPoolSettingsCollect:FindRecursive(name, class) end
