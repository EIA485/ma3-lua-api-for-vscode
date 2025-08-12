---@meta

---@class SysteminfoWindowSettingsCollect: Object
local SysteminfoWindowSettingsCollect = {}
---@return "SysteminfoWindowSettingsCollect"
function SysteminfoWindowSettingsCollect:GetClass() end
---@return "SysteminfoWindowSettings"
function SysteminfoWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Ptr(index) end
---@return SysteminfoWindowSettings[]
function SysteminfoWindowSettingsCollect:Children() end
---@return SysteminfoWindowSettings?
function SysteminfoWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "SysteminfoWindowSettings", undo: Undo?): SysteminfoWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SysteminfoWindowSettings", undo: Undo?, count: integer?): SysteminfoWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SysteminfoWindowSettings", undo: Undo?): SysteminfoWindowSettings
---@overload fun(class: nil, undo: Undo?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SysteminfoWindowSettings", undo: Undo?): SysteminfoWindowSettings
---@overload fun(class: nil, undo: Undo?): SysteminfoWindowSettings
---@deprecated use "Acquire" instead
function SysteminfoWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SysteminfoWindowSettings", undo: Undo?, count: integer?): SysteminfoWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SysteminfoWindowSettings"): SysteminfoWindowSettings
---@overload fun(name: string, class: nil): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SysteminfoWindowSettings"): SysteminfoWindowSettings
---@overload fun(name: string, class: nil): Object
function SysteminfoWindowSettingsCollect:FindRecursive(name, class) end
