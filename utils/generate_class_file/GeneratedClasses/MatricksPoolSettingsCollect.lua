---@meta

---@class MatricksPoolSettingsCollect: Object
local MatricksPoolSettingsCollect = {}
---@return "MatricksPoolSettingsCollect"
function MatricksPoolSettingsCollect:GetClass() end
---@return "MatricksPoolSettings"
function MatricksPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return MatricksPoolSettings
function MatricksPoolSettingsCollect:Ptr(index) end
---@return MatricksPoolSettings[]
function MatricksPoolSettingsCollect:Children() end
---@return MatricksPoolSettings?
function MatricksPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): MatricksPoolSettings
function MatricksPoolSettingsCollect:Get(name, role) end
---@generic T : MatricksPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Create(index, class, undo) end
---@generic T : MatricksPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Append(class, undo, count) end
---@generic T : MatricksPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Acquire(class, undo) end
---@generic T : MatricksPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MatricksPoolSettings
---@deprecated use "Acquire" instead
function MatricksPoolSettingsCollect:Aquire(class, undo) end
---@generic T : MatricksPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : MatricksPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Find(class, undo) end