---@meta

---@class WorldPoolSettingsCollect: Object
local WorldPoolSettingsCollect = {}
---@return "WorldPoolSettingsCollect"
function WorldPoolSettingsCollect:GetClass() end
---@return "WorldPoolSettings"
function WorldPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return WorldPoolSettings
function WorldPoolSettingsCollect:Ptr(index) end
---@return WorldPoolSettings[]
function WorldPoolSettingsCollect:Children() end
---@return WorldPoolSettings?
function WorldPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): WorldPoolSettings
function WorldPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "WorldPoolSettings", undo: Undo?): WorldPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): WorldPoolSettings
function WorldPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "WorldPoolSettings", undo: Undo?, count: integer?): WorldPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): WorldPoolSettings
function WorldPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "WorldPoolSettings", undo: Undo?): WorldPoolSettings
---@overload fun(class: nil, undo: Undo?): WorldPoolSettings
function WorldPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "WorldPoolSettings", undo: Undo?): WorldPoolSettings
---@overload fun(class: nil, undo: Undo?): WorldPoolSettings
---@deprecated use "Acquire" instead
function WorldPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "WorldPoolSettings", undo: Undo?, count: integer?): WorldPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WorldPoolSettings
function WorldPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "WorldPoolSettings"): WorldPoolSettings
---@overload fun(name: string, class: nil): WorldPoolSettings
function WorldPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "WorldPoolSettings"): WorldPoolSettings
---@overload fun(name: string, class: nil): Object
function WorldPoolSettingsCollect:FindRecursive(name, class) end
