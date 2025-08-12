---@meta

---@class HelperWindowSettingsCollect: Object
local HelperWindowSettingsCollect = {}
---@return "HelperWindowSettingsCollect"
function HelperWindowSettingsCollect:GetClass() end
---@return "HelpViewerWindowSettings"
function HelperWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return HelpViewerWindowSettings
function HelperWindowSettingsCollect:Ptr(index) end
---@return HelpViewerWindowSettings[]
function HelperWindowSettingsCollect:Children() end
---@return HelpViewerWindowSettings?
function HelperWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "HelpViewerWindowSettings", undo: Undo?): HelpViewerWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "HelpViewerWindowSettings", undo: Undo?, count: integer?): HelpViewerWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "HelpViewerWindowSettings", undo: Undo?): HelpViewerWindowSettings
---@overload fun(class: nil, undo: Undo?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "HelpViewerWindowSettings", undo: Undo?): HelpViewerWindowSettings
---@overload fun(class: nil, undo: Undo?): HelpViewerWindowSettings
---@deprecated use "Acquire" instead
function HelperWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "HelpViewerWindowSettings", undo: Undo?, count: integer?): HelpViewerWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "HelpViewerWindowSettings"): HelpViewerWindowSettings
---@overload fun(name: string, class: nil): HelpViewerWindowSettings
function HelperWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "HelpViewerWindowSettings"): HelpViewerWindowSettings
---@overload fun(name: string, class: nil): Object
function HelperWindowSettingsCollect:FindRecursive(name, class) end
