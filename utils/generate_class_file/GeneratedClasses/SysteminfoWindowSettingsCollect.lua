---@meta

---@class SysteminfoWindowSettingsCollect: Object
local SysteminfoWindowSettingsCollect = {}
---@return "SysteminfoWindowSettingsCollect"
function SysteminfoWindowSettingsCollect:GetClass() end
---@return "SysteminfoWindowSettings"
function SysteminfoWindowSettingsCollect:GetChildClass() end
---@generic T : SysteminfoWindowSettingsCollect
---@param class `T`
---@return boolean
function SysteminfoWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Ptr(index) end
---@return SysteminfoWindowSettings[]
function SysteminfoWindowSettingsCollect:Children() end
---@return SysteminfoWindowSettings?
function SysteminfoWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Get(name, role) end
---@generic T : SysteminfoWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Create(index, class, undo) end
---@generic T : SysteminfoWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Append(class, undo, count) end
---@generic T : SysteminfoWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Acquire(class, undo) end
---@generic T : SysteminfoWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SysteminfoWindowSettings
---@deprecated use "Acquire" instead
function SysteminfoWindowSettingsCollect:Aquire(class, undo) end
---@generic T : SysteminfoWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SysteminfoWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SysteminfoWindowSettings
function SysteminfoWindowSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "DispView", property_value: DispView)
---@overload fun(property_name: "DispView", property_value: DispView)
function SysteminfoWindowSettingsCollect:SetChildren(property_name, property_value) end