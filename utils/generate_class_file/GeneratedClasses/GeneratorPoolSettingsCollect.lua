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
---@generic T : GeneratorPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Create(index, class, undo) end
---@generic T : GeneratorPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Append(class, undo, count) end
---@generic T : GeneratorPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Acquire(class, undo) end
---@generic T : GeneratorPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GeneratorPoolSettings
---@deprecated use "Acquire" instead
function GeneratorPoolSettingsCollect:Aquire(class, undo) end
---@generic T : GeneratorPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : GeneratorPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GeneratorPoolSettings
function GeneratorPoolSettingsCollect:Find(class, undo) end