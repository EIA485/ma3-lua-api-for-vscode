---@meta

---@class SpecialExecutorPages: Object
local SpecialExecutorPages = {}
---@return "SpecialExecutorPages"
function SpecialExecutorPages:GetClass() end
---@return "SpecialExecutors"
function SpecialExecutorPages:GetChildClass() end
---@return UserProfile
function SpecialExecutorPages:Parent() end
---@param index integer
---@return SpecialExecutors
function SpecialExecutorPages:Ptr(index) end
---@return SpecialExecutors[]
function SpecialExecutorPages:Children() end
---@return SpecialExecutors?
function SpecialExecutorPages:CurrentChild() end
---@overload fun(name: integer, role: nil): SpecialExecutors
function SpecialExecutorPages:Get(name, role) end
---@overload fun(index: integer, class: "SpecialExecutors", undo: Undo?): SpecialExecutors
---@overload fun(index: integer, class: nil, undo: Undo?): SpecialExecutors
function SpecialExecutorPages:Create(index, class, undo) end
---@overload fun(class: "SpecialExecutors", undo: Undo?, count: integer?): SpecialExecutors
---@overload fun(class: nil, undo: Undo?, count: integer?): SpecialExecutors
function SpecialExecutorPages:Append(class, undo, count) end
---@overload fun(class: "SpecialExecutors", undo: Undo?): SpecialExecutors
---@overload fun(class: nil, undo: Undo?): SpecialExecutors
function SpecialExecutorPages:Acquire(class, undo) end
---@overload fun(class: "SpecialExecutors", undo: Undo?): SpecialExecutors
---@overload fun(class: nil, undo: Undo?): SpecialExecutors
---@deprecated use "Acquire" instead
function SpecialExecutorPages:Aquire(class, undo) end
---@overload fun(index: integer, class: "SpecialExecutors", undo: Undo?, count: integer?): SpecialExecutors
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SpecialExecutors
function SpecialExecutorPages:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SpecialExecutors"): SpecialExecutors
---@overload fun(name: string, class: nil): SpecialExecutors
function SpecialExecutorPages:Find(name, class) end
---@overload fun(name: string, class: "SpecialExecutors"): SpecialExecutors
---@overload fun(name: string, class: nil): Object
function SpecialExecutorPages:FindRecursive(name, class) end
