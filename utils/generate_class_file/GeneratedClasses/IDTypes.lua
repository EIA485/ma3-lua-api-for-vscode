---@meta

---@class IDTypes: Object Displays all fixtures of one ID type.
local IDTypes = {}
---@return "IDTypes"
function IDTypes:GetClass() end
---@return "IDs"
function IDTypes:GetChildClass() end
---@return Patch
function IDTypes:Parent() end
---@param index integer
---@return IDs
function IDTypes:Ptr(index) end
---@return IDs[]
function IDTypes:Children() end
---@return IDs?
function IDTypes:CurrentChild() end
---@overload fun(name: integer, role: nil): IDs
function IDTypes:Get(name, role) end
---@overload fun(index: integer, class: "IDs", undo: Undo?): IDs
---@overload fun(index: integer, class: nil, undo: Undo?): IDs
function IDTypes:Create(index, class, undo) end
---@overload fun(class: "IDs", undo: Undo?, count: integer?): IDs
---@overload fun(class: nil, undo: Undo?, count: integer?): IDs
function IDTypes:Append(class, undo, count) end
---@overload fun(class: "IDs", undo: Undo?): IDs
---@overload fun(class: nil, undo: Undo?): IDs
function IDTypes:Acquire(class, undo) end
---@overload fun(class: "IDs", undo: Undo?): IDs
---@overload fun(class: nil, undo: Undo?): IDs
---@deprecated use "Acquire" instead
function IDTypes:Aquire(class, undo) end
---@overload fun(index: integer, class: "IDs", undo: Undo?, count: integer?): IDs
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IDs
function IDTypes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "IDs"): IDs
---@overload fun(name: string, class: nil): IDs
function IDTypes:Find(name, class) end
---@overload fun(name: string, class: "IDs"): IDs
---@overload fun(name: string, class: nil): Object
function IDTypes:FindRecursive(name, class) end
