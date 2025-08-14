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
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Group", undo: Undo?): Group
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?): Group
function Groups:Create(index, class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Group", undo: Undo?, count: integer?): Group
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: nil, undo: Undo?, count: integer?): Group
function Groups:Append(class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Group
function Groups:Acquire(class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Group
---@deprecated use "Acquire" instead
function Groups:Aquire(class, undo) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Group", undo: Undo?, count: integer?): Group
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Group
function Groups:Insert(index, class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Group
function Groups:Find(class, undo) end