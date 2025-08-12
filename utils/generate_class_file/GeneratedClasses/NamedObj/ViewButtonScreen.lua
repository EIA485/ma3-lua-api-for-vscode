---@meta

---@class ViewButtonScreen: NamedObj
local ViewButtonScreen = {}
---@return "ViewButtonScreen"
function ViewButtonScreen:GetClass() end
---@return "ViewButton"
function ViewButtonScreen:GetChildClass() end
---@return ViewButtonScreens
function ViewButtonScreen:Parent() end
---@param index integer
---@return ViewButton
function ViewButtonScreen:Ptr(index) end
---@return ViewButton[]
function ViewButtonScreen:Children() end
---@return ViewButton?
function ViewButtonScreen:CurrentChild() end
---@overload fun(name: integer, role: nil): ViewButton
function ViewButtonScreen:Get(name, role) end
---@overload fun(index: integer, class: "ViewButton", undo: Undo?): ViewButton
---@overload fun(index: integer, class: nil, undo: Undo?): ViewButton
function ViewButtonScreen:Create(index, class, undo) end
---@overload fun(class: "ViewButton", undo: Undo?, count: integer?): ViewButton
---@overload fun(class: nil, undo: Undo?, count: integer?): ViewButton
function ViewButtonScreen:Append(class, undo, count) end
---@overload fun(class: "ViewButton", undo: Undo?): ViewButton
---@overload fun(class: nil, undo: Undo?): ViewButton
function ViewButtonScreen:Acquire(class, undo) end
---@overload fun(class: "ViewButton", undo: Undo?): ViewButton
---@overload fun(class: nil, undo: Undo?): ViewButton
---@deprecated use "Acquire" instead
function ViewButtonScreen:Aquire(class, undo) end
---@overload fun(index: integer, class: "ViewButton", undo: Undo?, count: integer?): ViewButton
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ViewButton
function ViewButtonScreen:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ViewButton"): ViewButton
---@overload fun(name: string, class: nil): ViewButton
function ViewButtonScreen:Find(name, class) end
---@overload fun(name: string, class: "ViewButton"): ViewButton
---@overload fun(name: string, class: nil): Object
function ViewButtonScreen:FindRecursive(name, class) end
