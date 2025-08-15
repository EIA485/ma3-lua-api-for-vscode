---@meta

---@class HelperWindowSettingsCollect: Object
local HelperWindowSettingsCollect = {}
---@return "HelperWindowSettingsCollect"
function HelperWindowSettingsCollect:GetClass() end
---@return "HelpViewerWindowSettings"
function HelperWindowSettingsCollect:GetChildClass() end
---@generic T : HelperWindowSettingsCollect
---@param class `T`
---@return boolean
function HelperWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return HelpViewerWindowSettings
function HelperWindowSettingsCollect:Ptr(index) end
---@return HelpViewerWindowSettings[]
function HelperWindowSettingsCollect:Children() end
---@return HelpViewerWindowSettings?
function HelperWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Get(name, role) end
---@generic T : HelpViewerWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Create(index, class, undo) end
---@generic T : HelpViewerWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Append(class, undo, count) end
---@generic T : HelpViewerWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Acquire(class, undo) end
---@generic T : HelpViewerWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): HelpViewerWindowSettings
---@deprecated use "Acquire" instead
function HelperWindowSettingsCollect:Aquire(class, undo) end
---@generic T : HelpViewerWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : HelpViewerWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "ZoomFactor", property_value: ZoomFactor)
---@overload fun(property_name: "ZoomFactor", property_value: ZoomFactor)
function HelperWindowSettingsCollect:ZoomFactor(property_name, property_value) end