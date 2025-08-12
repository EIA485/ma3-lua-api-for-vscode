---@meta

---@class GeneratorPoolSettingsCollect: Object
local GeneratorPoolSettingsCollect = {}
---@return "GeneratorPoolSettingsCollect"
function GeneratorPoolSettingsCollect:GetClass() end
---@return "GeneratorPoolSettings"
function GeneratorPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Ptr(index) end
---@return GeneratorPoolSettings[]
function GeneratorPoolSettingsCollect:Children() end
---@return GeneratorPoolSettings?
function GeneratorPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "GeneratorPoolSettings", undo: Undo?): GeneratorPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "GeneratorPoolSettings", undo: Undo?, count: integer?): GeneratorPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "GeneratorPoolSettings", undo: Undo?): GeneratorPoolSettings
---@overload fun(class: nil, undo: Undo?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "GeneratorPoolSettings", undo: Undo?): GeneratorPoolSettings
---@overload fun(class: nil, undo: Undo?): GeneratorPoolSettings
---@deprecated use "Acquire" instead
function GeneratorPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "GeneratorPoolSettings", undo: Undo?, count: integer?): GeneratorPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GeneratorPoolSettings"): GeneratorPoolSettings
---@overload fun(name: string, class: nil): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "GeneratorPoolSettings"): GeneratorPoolSettings
---@overload fun(name: string, class: nil): Object
function GeneratorPoolSettingsCollect:FindRecursive(name, class) end
