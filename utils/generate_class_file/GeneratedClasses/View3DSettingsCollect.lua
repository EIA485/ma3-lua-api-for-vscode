---@meta

---@class View3DSettingsCollect: Object
local View3DSettingsCollect = {}
---@return "View3DSettingsCollect"
function View3DSettingsCollect:GetClass() end
---@return "View3DSettings"
function View3DSettingsCollect:GetChildClass() end
---@param index integer
---@return View3DSettings
function View3DSettingsCollect:Ptr(index) end
---@return View3DSettings[]
function View3DSettingsCollect:Children() end
---@return View3DSettings?
function View3DSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): View3DSettings
function View3DSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "View3DSettings", undo: Undo?): View3DSettings
---@overload fun(index: integer, class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "View3DSettings", undo: Undo?, count: integer?): View3DSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): View3DSettings
function View3DSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "View3DSettings", undo: Undo?): View3DSettings
---@overload fun(class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "View3DSettings", undo: Undo?): View3DSettings
---@overload fun(class: nil, undo: Undo?): View3DSettings
---@deprecated use "Acquire" instead
function View3DSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "View3DSettings", undo: Undo?, count: integer?): View3DSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): View3DSettings
function View3DSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "View3DSettings"): View3DSettings
---@overload fun(name: string, class: nil): View3DSettings
function View3DSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "View3DSettings"): View3DSettings
---@overload fun(name: string, class: nil): Object
function View3DSettingsCollect:FindRecursive(name, class) end
