---@meta

---@class MasterPoolTiming: MasterPool
local MasterPoolTiming = {}
---@return "MasterPoolTiming"
function MasterPoolTiming:GetClass() end
---@return "MasterTiming"
function MasterPoolTiming:GetChildClass() end
---@param index integer
---@return MasterTiming
function MasterPoolTiming:Ptr(index) end
---@return MasterTiming[]
function MasterPoolTiming:Children() end
---@return MasterTiming?
function MasterPoolTiming:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterTiming
function MasterPoolTiming:Get(name, role) end
---@overload fun(index: integer, class: "MasterTiming", undo: Undo?): MasterTiming
---@overload fun(index: integer, class: nil, undo: Undo?): MasterTiming
function MasterPoolTiming:Create(index, class, undo) end
---@overload fun(class: "MasterTiming", undo: Undo?, count: integer?): MasterTiming
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterTiming
function MasterPoolTiming:Append(class, undo, count) end
---@overload fun(class: "MasterTiming", undo: Undo?): MasterTiming
---@overload fun(class: nil, undo: Undo?): MasterTiming
function MasterPoolTiming:Acquire(class, undo) end
---@overload fun(class: "MasterTiming", undo: Undo?): MasterTiming
---@overload fun(class: nil, undo: Undo?): MasterTiming
---@deprecated use "Acquire" instead
function MasterPoolTiming:Aquire(class, undo) end
---@overload fun(index: integer, class: "MasterTiming", undo: Undo?, count: integer?): MasterTiming
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterTiming
function MasterPoolTiming:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MasterTiming"): MasterTiming
---@overload fun(name: string, class: nil): MasterTiming
function MasterPoolTiming:Find(name, class) end
---@overload fun(name: string, class: "MasterTiming"): MasterTiming
---@overload fun(name: string, class: nil): Object
function MasterPoolTiming:FindRecursive(name, class) end
