---@meta

---@class RdmWindowSettingsCollect: Object
local RdmWindowSettingsCollect = {}
---@return "RdmWindowSettingsCollect"
function RdmWindowSettingsCollect:GetClass() end
---@return "RdmWindowSettings"
function RdmWindowSettingsCollect:GetChildClass() end
---@generic T : RdmWindowSettingsCollect
---@param class `T`
---@return boolean
function RdmWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return RdmWindowSettings
function RdmWindowSettingsCollect:Ptr(index) end
---@return RdmWindowSettings[]
function RdmWindowSettingsCollect:Children() end
---@return RdmWindowSettings?
function RdmWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): RdmWindowSettings
function RdmWindowSettingsCollect:Get(name, role) end
---@generic T : RdmWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RdmWindowSettings
function RdmWindowSettingsCollect:Create(index, class, undo) end
---@generic T : RdmWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RdmWindowSettings
function RdmWindowSettingsCollect:Append(class, undo, count) end
---@generic T : RdmWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RdmWindowSettings
function RdmWindowSettingsCollect:Acquire(class, undo) end
---@generic T : RdmWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RdmWindowSettings
---@deprecated use "Acquire" instead
function RdmWindowSettingsCollect:Aquire(class, undo) end
---@generic T : RdmWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RdmWindowSettings
function RdmWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : RdmWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RdmWindowSettings
function RdmWindowSettingsCollect:Find(class, undo) end
function RdmWindowSettingsCollect:ActiveDisplay(property_name, property_value) end