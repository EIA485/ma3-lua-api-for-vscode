---@meta

---@class SysmonWindowSettingsCollect: Object
local SysmonWindowSettingsCollect = {}
---@return "SysmonWindowSettingsCollect"
function SysmonWindowSettingsCollect:GetClass() end
---@return "SysmonWindowSettings"
function SysmonWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return SysmonWindowSettings
function SysmonWindowSettingsCollect:Ptr(index) end
---@return SysmonWindowSettings[]
function SysmonWindowSettingsCollect:Children() end
---@return SysmonWindowSettings?
function SysmonWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SysmonWindowSettings
function SysmonWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "SysmonWindowSettings", undo: Undo?): SysmonWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SysmonWindowSettings", undo: Undo?, count: integer?): SysmonWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SysmonWindowSettings", undo: Undo?): SysmonWindowSettings
---@overload fun(class: nil, undo: Undo?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SysmonWindowSettings", undo: Undo?): SysmonWindowSettings
---@overload fun(class: nil, undo: Undo?): SysmonWindowSettings
---@deprecated use "Acquire" instead
function SysmonWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SysmonWindowSettings", undo: Undo?, count: integer?): SysmonWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SysmonWindowSettings"): SysmonWindowSettings
---@overload fun(name: string, class: nil): SysmonWindowSettings
function SysmonWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SysmonWindowSettings"): SysmonWindowSettings
---@overload fun(name: string, class: nil): Object
function SysmonWindowSettingsCollect:FindRecursive(name, class) end
