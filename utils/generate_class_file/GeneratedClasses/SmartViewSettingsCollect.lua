---@meta

---@class SmartViewSettingsCollect: Object
local SmartViewSettingsCollect = {}
---@return "SmartViewSettingsCollect"
function SmartViewSettingsCollect:GetClass() end
---@return "SmartViewSettings"
function SmartViewSettingsCollect:GetChildClass() end
---@param index integer
---@return SmartViewSettings
function SmartViewSettingsCollect:Ptr(index) end
---@return SmartViewSettings[]
function SmartViewSettingsCollect:Children() end
---@return SmartViewSettings?
function SmartViewSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SmartViewSettings
function SmartViewSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "SmartViewSettings", undo: Undo?): SmartViewSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SmartViewSettings
function SmartViewSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SmartViewSettings", undo: Undo?, count: integer?): SmartViewSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SmartViewSettings
function SmartViewSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SmartViewSettings", undo: Undo?): SmartViewSettings
---@overload fun(class: nil, undo: Undo?): SmartViewSettings
function SmartViewSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SmartViewSettings", undo: Undo?): SmartViewSettings
---@overload fun(class: nil, undo: Undo?): SmartViewSettings
---@deprecated use "Acquire" instead
function SmartViewSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SmartViewSettings", undo: Undo?, count: integer?): SmartViewSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SmartViewSettings
function SmartViewSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SmartViewSettings"): SmartViewSettings
---@overload fun(name: string, class: nil): SmartViewSettings
function SmartViewSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SmartViewSettings"): SmartViewSettings
---@overload fun(name: string, class: nil): Object
function SmartViewSettingsCollect:FindRecursive(name, class) end
