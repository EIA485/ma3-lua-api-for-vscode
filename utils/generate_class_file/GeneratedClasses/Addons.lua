---@meta

---@class Addons: Object
local Addons = {}
---@return "Addons"
function Addons:GetClass() end
---@return "Addon"
function Addons:GetChildClass() end
---@return Root
function Addons:Parent() end
---@param index integer
---@return Addon
function Addons:Ptr(index) end
---@return Addon[]
function Addons:Children() end
---@return Addon?
function Addons:CurrentChild() end
---@overload fun(name: integer, role: nil): Addon
function Addons:Get(name, role) end
---@overload fun(index: integer, class: "Addon", undo: Undo?): Addon
---@overload fun(index: integer, class: nil, undo: Undo?): Addon
function Addons:Create(index, class, undo) end
---@overload fun(class: "Addon", undo: Undo?, count: integer?): Addon
---@overload fun(class: nil, undo: Undo?, count: integer?): Addon
function Addons:Append(class, undo, count) end
---@overload fun(class: "Addon", undo: Undo?): Addon
---@overload fun(class: nil, undo: Undo?): Addon
function Addons:Acquire(class, undo) end
---@overload fun(class: "Addon", undo: Undo?): Addon
---@overload fun(class: nil, undo: Undo?): Addon
---@deprecated use "Acquire" instead
function Addons:Aquire(class, undo) end
---@overload fun(index: integer, class: "Addon", undo: Undo?, count: integer?): Addon
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Addon
function Addons:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Addon"): Addon
---@overload fun(name: string, class: nil): Addon
function Addons:Find(name, class) end
---@overload fun(name: string, class: "Addon"): Addon
---@overload fun(name: string, class: nil): Object
function Addons:FindRecursive(name, class) end
