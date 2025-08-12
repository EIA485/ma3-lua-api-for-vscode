---@meta

---@class MouseCollect: Object
local MouseCollect = {}
---@return "MouseCollect"
function MouseCollect:GetClass() end
---@return "Mouse"
function MouseCollect:GetChildClass() end
---@return Devices
function MouseCollect:Parent() end
---@param index integer
---@return Mouse
function MouseCollect:Ptr(index) end
---@return Mouse[]
function MouseCollect:Children() end
---@return Mouse?
function MouseCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Mouse
function MouseCollect:Get(name, role) end
---@overload fun(index: integer, class: "Mouse", undo: Undo?): Mouse
---@overload fun(index: integer, class: nil, undo: Undo?): Mouse
function MouseCollect:Create(index, class, undo) end
---@overload fun(class: "Mouse", undo: Undo?, count: integer?): Mouse
---@overload fun(class: nil, undo: Undo?, count: integer?): Mouse
function MouseCollect:Append(class, undo, count) end
---@overload fun(class: "Mouse", undo: Undo?): Mouse
---@overload fun(class: nil, undo: Undo?): Mouse
function MouseCollect:Acquire(class, undo) end
---@overload fun(class: "Mouse", undo: Undo?): Mouse
---@overload fun(class: nil, undo: Undo?): Mouse
---@deprecated use "Acquire" instead
function MouseCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Mouse", undo: Undo?, count: integer?): Mouse
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Mouse
function MouseCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Mouse"): Mouse
---@overload fun(name: string, class: nil): Mouse
function MouseCollect:Find(name, class) end
---@overload fun(name: string, class: "Mouse"): Mouse
---@overload fun(name: string, class: nil): Object
function MouseCollect:FindRecursive(name, class) end
