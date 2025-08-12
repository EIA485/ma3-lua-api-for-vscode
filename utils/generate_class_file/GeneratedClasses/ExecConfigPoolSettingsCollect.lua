---@meta

---@class ExecConfigPoolSettingsCollect: Object
local ExecConfigPoolSettingsCollect = {}
---@return "ExecConfigPoolSettingsCollect"
function ExecConfigPoolSettingsCollect:GetClass() end
---@return "ExecConfigPoolSettings"
function ExecConfigPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Ptr(index) end
---@return ExecConfigPoolSettings[]
function ExecConfigPoolSettingsCollect:Children() end
---@return ExecConfigPoolSettings?
function ExecConfigPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "ExecConfigPoolSettings", undo: Undo?): ExecConfigPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "ExecConfigPoolSettings", undo: Undo?, count: integer?): ExecConfigPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "ExecConfigPoolSettings", undo: Undo?): ExecConfigPoolSettings
---@overload fun(class: nil, undo: Undo?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "ExecConfigPoolSettings", undo: Undo?): ExecConfigPoolSettings
---@overload fun(class: nil, undo: Undo?): ExecConfigPoolSettings
---@deprecated use "Acquire" instead
function ExecConfigPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ExecConfigPoolSettings", undo: Undo?, count: integer?): ExecConfigPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ExecConfigPoolSettings"): ExecConfigPoolSettings
---@overload fun(name: string, class: nil): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "ExecConfigPoolSettings"): ExecConfigPoolSettings
---@overload fun(name: string, class: nil): Object
function ExecConfigPoolSettingsCollect:FindRecursive(name, class) end
