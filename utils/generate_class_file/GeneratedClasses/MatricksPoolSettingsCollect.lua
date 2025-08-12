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
---@overload fun(index: integer, class: "MatricksPoolSettings", undo: Undo?): MatricksPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "MatricksPoolSettings", undo: Undo?, count: integer?): MatricksPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "MatricksPoolSettings", undo: Undo?): MatricksPoolSettings
---@overload fun(class: nil, undo: Undo?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "MatricksPoolSettings", undo: Undo?): MatricksPoolSettings
---@overload fun(class: nil, undo: Undo?): MatricksPoolSettings
---@deprecated use "Acquire" instead
function MatricksPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "MatricksPoolSettings", undo: Undo?, count: integer?): MatricksPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MatricksPoolSettings
function MatricksPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MatricksPoolSettings"): MatricksPoolSettings
---@overload fun(name: string, class: nil): MatricksPoolSettings
function MatricksPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "MatricksPoolSettings"): MatricksPoolSettings
---@overload fun(name: string, class: nil): Object
function MatricksPoolSettingsCollect:FindRecursive(name, class) end
