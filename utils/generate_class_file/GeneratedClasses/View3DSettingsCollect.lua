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
---@generic T : View3DSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Create(index, class, undo) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): View3DSettings
function View3DSettingsCollect:Append(class, undo, count) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Acquire(class, undo) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): View3DSettings
---@deprecated use "Acquire" instead
function View3DSettingsCollect:Aquire(class, undo) end
---@generic T : View3DSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): View3DSettings
function View3DSettingsCollect:Insert(index, class, undo, count) end
---@generic T : View3DSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): View3DSettings
function View3DSettingsCollect:Find(class, undo) end