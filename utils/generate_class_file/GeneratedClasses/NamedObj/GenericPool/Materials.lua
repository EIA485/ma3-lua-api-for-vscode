---@meta

---@class Materials: GenericPool
local Materials = {}
---@return "Materials"
function Materials:GetClass() end
---@return "MaterialContent"
function Materials:GetChildClass() end
---@return UserProfile
function Materials:Parent() end
---@param index integer
---@return MaterialContent
function Materials:Ptr(index) end
---@return MaterialContent[]
function Materials:Children() end
---@return MaterialContent?
function Materials:CurrentChild() end
---@overload fun(name: integer, role: nil): MaterialContent
function Materials:Get(name, role) end
---@overload fun(index: integer, class: "MaterialContent", undo: Undo?): MaterialContent
---@overload fun(index: integer, class: nil, undo: Undo?): MaterialContent
function Materials:Create(index, class, undo) end
---@overload fun(class: "MaterialContent", undo: Undo?, count: integer?): MaterialContent
---@overload fun(class: nil, undo: Undo?, count: integer?): MaterialContent
function Materials:Append(class, undo, count) end
---@overload fun(class: "MaterialContent", undo: Undo?): MaterialContent
---@overload fun(class: nil, undo: Undo?): MaterialContent
function Materials:Acquire(class, undo) end
---@overload fun(class: "MaterialContent", undo: Undo?): MaterialContent
---@overload fun(class: nil, undo: Undo?): MaterialContent
---@deprecated use "Acquire" instead
function Materials:Aquire(class, undo) end
---@overload fun(index: integer, class: "MaterialContent", undo: Undo?, count: integer?): MaterialContent
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MaterialContent
function Materials:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MaterialContent"): MaterialContent
---@overload fun(name: string, class: nil): MaterialContent
function Materials:Find(name, class) end
---@overload fun(name: string, class: "MaterialContent"): MaterialContent
---@overload fun(name: string, class: nil): Object
function Materials:FindRecursive(name, class) end
