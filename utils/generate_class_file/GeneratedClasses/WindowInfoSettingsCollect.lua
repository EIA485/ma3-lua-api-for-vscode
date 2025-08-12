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
---@overload fun(index: integer, class: "WindowInfoSettings", undo: Undo?): WindowInfoSettings
---@overload fun(index: integer, class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "WindowInfoSettings", undo: Undo?, count: integer?): WindowInfoSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowInfoSettings
function WindowInfoSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "WindowInfoSettings", undo: Undo?): WindowInfoSettings
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "WindowInfoSettings", undo: Undo?): WindowInfoSettings
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
---@deprecated use "Acquire" instead
function WindowInfoSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "WindowInfoSettings", undo: Undo?, count: integer?): WindowInfoSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowInfoSettings
function WindowInfoSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "WindowInfoSettings"): WindowInfoSettings
---@overload fun(name: string, class: nil): WindowInfoSettings
function WindowInfoSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "WindowInfoSettings"): WindowInfoSettings
---@overload fun(name: string, class: nil): Object
function WindowInfoSettingsCollect:FindRecursive(name, class) end
