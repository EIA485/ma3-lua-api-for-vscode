---@meta

---@class ViewButtonScreens: Object
local ViewButtonScreens = {}
---@return "ViewButtonScreens"
function ViewButtonScreens:GetClass() end
---@return "ViewButtonScreen"
function ViewButtonScreens:GetChildClass() end
---@return UserProfile
function ViewButtonScreens:Parent() end
---@param index integer
---@return ViewButtonScreen
function ViewButtonScreens:Ptr(index) end
---@return ViewButtonScreen[]
function ViewButtonScreens:Children() end
---@return ViewButtonScreen?
function ViewButtonScreens:CurrentChild() end
---@overload fun(name: integer, role: nil): ViewButtonScreen
function ViewButtonScreens:Get(name, role) end
---@overload fun(index: integer, class: "ViewButtonScreen", undo: Undo?): ViewButtonScreen
---@overload fun(index: integer, class: nil, undo: Undo?): ViewButtonScreen
function ViewButtonScreens:Create(index, class, undo) end
---@overload fun(class: "ViewButtonScreen", undo: Undo?, count: integer?): ViewButtonScreen
---@overload fun(class: nil, undo: Undo?, count: integer?): ViewButtonScreen
function ViewButtonScreens:Append(class, undo, count) end
---@overload fun(class: "ViewButtonScreen", undo: Undo?): ViewButtonScreen
---@overload fun(class: nil, undo: Undo?): ViewButtonScreen
function ViewButtonScreens:Acquire(class, undo) end
---@overload fun(class: "ViewButtonScreen", undo: Undo?): ViewButtonScreen
---@overload fun(class: nil, undo: Undo?): ViewButtonScreen
---@deprecated use "Acquire" instead
function ViewButtonScreens:Aquire(class, undo) end
---@overload fun(index: integer, class: "ViewButtonScreen", undo: Undo?, count: integer?): ViewButtonScreen
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ViewButtonScreen
function ViewButtonScreens:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ViewButtonScreen"): ViewButtonScreen
---@overload fun(name: string, class: nil): ViewButtonScreen
function ViewButtonScreens:Find(name, class) end
---@overload fun(name: string, class: "ViewButtonScreen"): ViewButtonScreen
---@overload fun(name: string, class: nil): Object
function ViewButtonScreens:FindRecursive(name, class) end
