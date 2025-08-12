---@meta

---@class MAtricks: GenericPool
local MAtricks = {}
---@return "MAtricks"
function MAtricks:GetClass() end
---@return "MAtrick"
function MAtricks:GetChildClass() end
---@return Pool
function MAtricks:Parent() end
---@param index integer
---@return MAtrick
function MAtricks:Ptr(index) end
---@return MAtrick[]
function MAtricks:Children() end
---@return MAtrick?
function MAtricks:CurrentChild() end
---@overload fun(name: integer, role: nil): MAtrick
function MAtricks:Get(name, role) end
---@overload fun(index: integer, class: "MAtrick", undo: Undo?): MAtrick
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?): MAtrick
function MAtricks:Create(index, class, undo) end
---@overload fun(class: "MAtrick", undo: Undo?, count: integer?): MAtrick
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(class: nil, undo: Undo?, count: integer?): MAtrick
function MAtricks:Append(class, undo, count) end
---@overload fun(class: "MAtrick", undo: Undo?): MAtrick
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): MAtrick
function MAtricks:Acquire(class, undo) end
---@overload fun(class: "MAtrick", undo: Undo?): MAtrick
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): MAtrick
---@deprecated use "Acquire" instead
function MAtricks:Aquire(class, undo) end
---@overload fun(index: integer, class: "MAtrick", undo: Undo?, count: integer?): MAtrick
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MAtrick
function MAtricks:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MAtrick"): MAtrick
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): MAtrick
function MAtricks:Find(name, class) end
---@overload fun(name: string, class: "MAtrick"): MAtrick
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Object
function MAtricks:FindRecursive(name, class) end
