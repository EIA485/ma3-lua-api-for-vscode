---@meta

---@class SmartViewSettingsCollect: Object
local SmartViewSettingsCollect = {}
---@return "SmartViewSettingsCollect"
function SmartViewSettingsCollect:GetClass() end
---@return "SmartViewSettings"
function SmartViewSettingsCollect:GetChildClass() end
---@generic T : SmartViewSettingsCollect
---@param class `T`
---@return boolean
function SmartViewSettingsCollect:IsClass(class) end
---@param index integer
---@return SmartViewSettings
function SmartViewSettingsCollect:Ptr(index) end
---@return SmartViewSettings[]
function SmartViewSettingsCollect:Children() end
---@return SmartViewSettings?
function SmartViewSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SmartViewSettings
function SmartViewSettingsCollect:Get(name, role) end
---@generic T : SmartViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SmartViewSettings
function SmartViewSettingsCollect:Create(index, class, undo) end
---@generic T : SmartViewSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SmartViewSettings
function SmartViewSettingsCollect:Append(class, undo, count) end
---@generic T : SmartViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SmartViewSettings
function SmartViewSettingsCollect:Acquire(class, undo) end
---@generic T : SmartViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SmartViewSettings
---@deprecated use "Acquire" instead
function SmartViewSettingsCollect:Aquire(class, undo) end
---@generic T : SmartViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SmartViewSettings
function SmartViewSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SmartViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SmartViewSettings
function SmartViewSettingsCollect:Find(class, undo) end
function SmartViewSettingsCollect:ActiveDisplay(property_name, property_value) end