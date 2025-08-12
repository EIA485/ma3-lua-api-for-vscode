---@meta

---@class MasterPoolGrand: MasterPool
local MasterPoolGrand = {}
---@return "MasterPoolGrand"
function MasterPoolGrand:GetClass() end
---@return "MasterGrand"
function MasterPoolGrand:GetChildClass() end
---@param index integer
---@return MasterGrand
function MasterPoolGrand:Ptr(index) end
---@return MasterGrand[]
function MasterPoolGrand:Children() end
---@return MasterGrand?
function MasterPoolGrand:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterGrand
function MasterPoolGrand:Get(name, role) end
---@overload fun(index: integer, class: "MasterGrand", undo: Undo?): MasterGrand
---@overload fun(index: integer, class: nil, undo: Undo?): MasterGrand
function MasterPoolGrand:Create(index, class, undo) end
---@overload fun(class: "MasterGrand", undo: Undo?, count: integer?): MasterGrand
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterGrand
function MasterPoolGrand:Append(class, undo, count) end
---@overload fun(class: "MasterGrand", undo: Undo?): MasterGrand
---@overload fun(class: nil, undo: Undo?): MasterGrand
function MasterPoolGrand:Acquire(class, undo) end
---@overload fun(class: "MasterGrand", undo: Undo?): MasterGrand
---@overload fun(class: nil, undo: Undo?): MasterGrand
---@deprecated use "Acquire" instead
function MasterPoolGrand:Aquire(class, undo) end
---@overload fun(index: integer, class: "MasterGrand", undo: Undo?, count: integer?): MasterGrand
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterGrand
function MasterPoolGrand:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MasterGrand"): MasterGrand
---@overload fun(name: string, class: nil): MasterGrand
function MasterPoolGrand:Find(name, class) end
---@overload fun(name: string, class: "MasterGrand"): MasterGrand
---@overload fun(name: string, class: nil): Object
function MasterPoolGrand:FindRecursive(name, class) end
