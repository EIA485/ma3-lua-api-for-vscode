---@meta

---@class PresetColorPoolSettingsCollect: Object
local PresetColorPoolSettingsCollect = {}
---@return "PresetColorPoolSettingsCollect"
function PresetColorPoolSettingsCollect:GetClass() end
---@return "PresetColorPoolSettings"
function PresetColorPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Ptr(index) end
---@return PresetColorPoolSettings[]
function PresetColorPoolSettingsCollect:Children() end
---@return PresetColorPoolSettings?
function PresetColorPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Get(name, role) end
---@generic T : PresetColorPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Create(index, class, undo) end
---@generic T : PresetColorPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Append(class, undo, count) end
---@generic T : PresetColorPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Acquire(class, undo) end
---@generic T : PresetColorPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetColorPoolSettings
---@deprecated use "Acquire" instead
function PresetColorPoolSettingsCollect:Aquire(class, undo) end
---@generic T : PresetColorPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PresetColorPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PresetColorPoolSettings
function PresetColorPoolSettingsCollect:Find(class, undo) end