---@meta

---@class RdmWindowSettingsCollect: Object
local RdmWindowSettingsCollect = {}
---@return "RdmWindowSettingsCollect"
function RdmWindowSettingsCollect:GetClass() end
---@return "RdmWindowSettings"
function RdmWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return RdmWindowSettings
function RdmWindowSettingsCollect:Ptr(index) end
---@return RdmWindowSettings[]
function RdmWindowSettingsCollect:Children() end
---@return RdmWindowSettings?
function RdmWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): RdmWindowSettings
function RdmWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "RdmWindowSettings", undo: Undo?): RdmWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): RdmWindowSettings
function RdmWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "RdmWindowSettings", undo: Undo?, count: integer?): RdmWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): RdmWindowSettings
function RdmWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "RdmWindowSettings", undo: Undo?): RdmWindowSettings
---@overload fun(class: nil, undo: Undo?): RdmWindowSettings
function RdmWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "RdmWindowSettings", undo: Undo?): RdmWindowSettings
---@overload fun(class: nil, undo: Undo?): RdmWindowSettings
---@deprecated use "Acquire" instead
function RdmWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "RdmWindowSettings", undo: Undo?, count: integer?): RdmWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RdmWindowSettings
function RdmWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RdmWindowSettings"): RdmWindowSettings
---@overload fun(name: string, class: nil): RdmWindowSettings
function RdmWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "RdmWindowSettings"): RdmWindowSettings
---@overload fun(name: string, class: nil): Object
function RdmWindowSettingsCollect:FindRecursive(name, class) end
