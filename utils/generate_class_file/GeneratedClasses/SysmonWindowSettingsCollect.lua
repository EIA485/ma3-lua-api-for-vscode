---@meta

---@class SysmonWindowSettingsCollect: Object
local SysmonWindowSettingsCollect = {}
---@return "SysmonWindowSettingsCollect"
function SysmonWindowSettingsCollect:GetClass() end
---@return "SysmonWindowSettings"
function SysmonWindowSettingsCollect:GetChildClass() end
---@generic T : SysmonWindowSettingsCollect
---@param class `T`
---@return boolean
function SysmonWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return SysmonWindowSettings
function SysmonWindowSettingsCollect:Ptr(index) end
---@return SysmonWindowSettings[]
function SysmonWindowSettingsCollect:Children() end
---@return SysmonWindowSettings?
function SysmonWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SysmonWindowSettings
function SysmonWindowSettingsCollect:Get(name, role) end
---@generic T : SysmonWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Create(index, class, undo) end
---@generic T : SysmonWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Append(class, undo, count) end
---@generic T : SysmonWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Acquire(class, undo) end
---@generic T : SysmonWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SysmonWindowSettings
---@deprecated use "Acquire" instead
function SysmonWindowSettingsCollect:Aquire(class, undo) end
---@generic T : SysmonWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SysmonWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SysmonWindowSettings
function SysmonWindowSettingsCollect:Find(class, undo) end
function SysmonWindowSettingsCollect:ShowCommandlineField(property_name, property_value) end