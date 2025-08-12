---@meta

---@class MasterPoolSelected: MasterPool
local MasterPoolSelected = {}
---@return "MasterPoolSelected"
function MasterPoolSelected:GetClass() end
---@return "MasterSelected"
function MasterPoolSelected:GetChildClass() end
---@param index integer
---@return MasterSelected
function MasterPoolSelected:Ptr(index) end
---@return MasterSelected[]
function MasterPoolSelected:Children() end
---@return MasterSelected?
function MasterPoolSelected:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterSelected
function MasterPoolSelected:Get(name, role) end
---@overload fun(index: integer, class: "MasterSelected", undo: Undo?): MasterSelected
---@overload fun(index: integer, class: nil, undo: Undo?): MasterSelected
function MasterPoolSelected:Create(index, class, undo) end
---@overload fun(class: "MasterSelected", undo: Undo?, count: integer?): MasterSelected
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterSelected
function MasterPoolSelected:Append(class, undo, count) end
---@overload fun(class: "MasterSelected", undo: Undo?): MasterSelected
---@overload fun(class: nil, undo: Undo?): MasterSelected
function MasterPoolSelected:Acquire(class, undo) end
---@overload fun(class: "MasterSelected", undo: Undo?): MasterSelected
---@overload fun(class: nil, undo: Undo?): MasterSelected
---@deprecated use "Acquire" instead
function MasterPoolSelected:Aquire(class, undo) end
---@overload fun(index: integer, class: "MasterSelected", undo: Undo?, count: integer?): MasterSelected
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterSelected
function MasterPoolSelected:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MasterSelected"): MasterSelected
---@overload fun(name: string, class: nil): MasterSelected
function MasterPoolSelected:Find(name, class) end
---@overload fun(name: string, class: "MasterSelected"): MasterSelected
---@overload fun(name: string, class: nil): Object
function MasterPoolSelected:FindRecursive(name, class) end
