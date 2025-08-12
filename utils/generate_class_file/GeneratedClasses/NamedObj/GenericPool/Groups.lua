---@meta

---@class Groups: GenericPool
local Groups = {}
---@return "Groups"
function Groups:GetClass() end
---@return "Group"
function Groups:GetChildClass() end
---@return Pool
function Groups:Parent() end
---@param index integer
---@return Group
function Groups:Ptr(index) end
---@return Group[]
function Groups:Children() end
---@return Group?
function Groups:CurrentChild() end
---@overload fun(name: integer, role: nil): Group
function Groups:Get(name, role) end
---@overload fun(index: integer, class: "Group", undo: Undo?): Group
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?): Group
function Groups:Create(index, class, undo) end
---@overload fun(class: "Group", undo: Undo?, count: integer?): Group
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(class: nil, undo: Undo?, count: integer?): Group
function Groups:Append(class, undo, count) end
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Group
function Groups:Acquire(class, undo) end
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Group
---@deprecated use "Acquire" instead
function Groups:Aquire(class, undo) end
---@overload fun(index: integer, class: "Group", undo: Undo?, count: integer?): Group
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Group
function Groups:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Group"): Group
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Group
function Groups:Find(name, class) end
---@overload fun(name: string, class: "Group"): Group
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Object
function Groups:FindRecursive(name, class) end
