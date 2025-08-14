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
---@generic T : WorldPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WorldPoolSettings
function WorldPoolSettingsCollect:Create(index, class, undo) end
---@generic T : WorldPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WorldPoolSettings
function WorldPoolSettingsCollect:Append(class, undo, count) end
---@generic T : WorldPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WorldPoolSettings
function WorldPoolSettingsCollect:Acquire(class, undo) end
---@generic T : WorldPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WorldPoolSettings
---@deprecated use "Acquire" instead
function WorldPoolSettingsCollect:Aquire(class, undo) end
---@generic T : WorldPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WorldPoolSettings
function WorldPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : WorldPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WorldPoolSettings
function WorldPoolSettingsCollect:Find(class, undo) end