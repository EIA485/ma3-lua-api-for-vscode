---@meta

---@class ExecConfigPoolSettingsCollect: Object
local ExecConfigPoolSettingsCollect = {}
---@return "ExecConfigPoolSettingsCollect"
function ExecConfigPoolSettingsCollect:GetClass() end
---@return "ExecConfigPoolSettings"
function ExecConfigPoolSettingsCollect:GetChildClass() end
---@generic T : ExecConfigPoolSettingsCollect
---@param class `T`
---@return boolean
function ExecConfigPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Ptr(index) end
---@return ExecConfigPoolSettings[]
function ExecConfigPoolSettingsCollect:Children() end
---@return ExecConfigPoolSettings?
function ExecConfigPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Get(name, role) end
---@generic T : ExecConfigPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Create(index, class, undo) end
---@generic T : ExecConfigPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Append(class, undo, count) end
---@generic T : ExecConfigPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Acquire(class, undo) end
---@generic T : ExecConfigPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ExecConfigPoolSettings
---@deprecated use "Acquire" instead
function ExecConfigPoolSettingsCollect:Aquire(class, undo) end
---@generic T : ExecConfigPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : ExecConfigPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ExecConfigPoolSettings
function ExecConfigPoolSettingsCollect:Find(class, undo) end
function ExecConfigPoolSettingsCollect:ShowCommandlineField(property_name, property_value) end