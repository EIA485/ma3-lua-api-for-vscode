---@meta

---@class WindowInfoSettingsCollect: Object
local WindowInfoSettingsCollect = {}
---@return "WindowInfoSettingsCollect"
function WindowInfoSettingsCollect:GetClass() end
---@return "WindowInfoSettings"
function WindowInfoSettingsCollect:GetChildClass() end
---@param index integer
---@return WindowInfoSettings
function WindowInfoSettingsCollect:Ptr(index) end
---@return WindowInfoSettings[]
function WindowInfoSettingsCollect:Children() end
---@return WindowInfoSettings?
function WindowInfoSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): WindowInfoSettings
function WindowInfoSettingsCollect:Get(name, role) end
---@generic T : WindowInfoSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Create(index, class, undo) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowInfoSettings
function WindowInfoSettingsCollect:Append(class, undo, count) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Acquire(class, undo) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
---@deprecated use "Acquire" instead
function WindowInfoSettingsCollect:Aquire(class, undo) end
---@generic T : WindowInfoSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowInfoSettings
function WindowInfoSettingsCollect:Insert(index, class, undo, count) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Find(class, undo) end