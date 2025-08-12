---@meta

---@class SpecialWindowSettingsCollect: Object
local SpecialWindowSettingsCollect = {}
---@return "SpecialWindowSettingsCollect"
function SpecialWindowSettingsCollect:GetClass() end
---@return "SpecialWindowSettings"
function SpecialWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return SpecialWindowSettings
function SpecialWindowSettingsCollect:Ptr(index) end
---@return SpecialWindowSettings[]
function SpecialWindowSettingsCollect:Children() end
---@return SpecialWindowSettings?
function SpecialWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SpecialWindowSettings
function SpecialWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "SpecialWindowSettings", undo: Undo?): SpecialWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SpecialWindowSettings", undo: Undo?, count: integer?): SpecialWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SpecialWindowSettings", undo: Undo?): SpecialWindowSettings
---@overload fun(class: nil, undo: Undo?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SpecialWindowSettings", undo: Undo?): SpecialWindowSettings
---@overload fun(class: nil, undo: Undo?): SpecialWindowSettings
---@deprecated use "Acquire" instead
function SpecialWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SpecialWindowSettings", undo: Undo?, count: integer?): SpecialWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SpecialWindowSettings"): SpecialWindowSettings
---@overload fun(name: string, class: nil): SpecialWindowSettings
function SpecialWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SpecialWindowSettings"): SpecialWindowSettings
---@overload fun(name: string, class: nil): Object
function SpecialWindowSettingsCollect:FindRecursive(name, class) end
