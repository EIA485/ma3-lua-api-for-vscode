---@meta

---@class SpecialExecutors: Page
local SpecialExecutors = {}
---@return "SpecialExecutors"
function SpecialExecutors:GetClass() end
---@return "SpecialExecutor"
function SpecialExecutors:GetChildClass() end
---@return SpecialExecutorPages
function SpecialExecutors:Parent() end
---@param index integer
---@return SpecialExecutor
function SpecialExecutors:Ptr(index) end
---@return SpecialExecutor[]
function SpecialExecutors:Children() end
---@return SpecialExecutor?
function SpecialExecutors:CurrentChild() end
---@overload fun(name: integer, role: nil): SpecialExecutor
function SpecialExecutors:Get(name, role) end
---@overload fun(index: integer, class: "SpecialExecutor", undo: Undo?): SpecialExecutor
---@overload fun(index: integer, class: nil, undo: Undo?): SpecialExecutor
function SpecialExecutors:Create(index, class, undo) end
---@overload fun(class: "SpecialExecutor", undo: Undo?, count: integer?): SpecialExecutor
---@overload fun(class: nil, undo: Undo?, count: integer?): SpecialExecutor
function SpecialExecutors:Append(class, undo, count) end
---@overload fun(class: "SpecialExecutor", undo: Undo?): SpecialExecutor
---@overload fun(class: nil, undo: Undo?): SpecialExecutor
function SpecialExecutors:Acquire(class, undo) end
---@overload fun(class: "SpecialExecutor", undo: Undo?): SpecialExecutor
---@overload fun(class: nil, undo: Undo?): SpecialExecutor
---@deprecated use "Acquire" instead
function SpecialExecutors:Aquire(class, undo) end
---@overload fun(index: integer, class: "SpecialExecutor", undo: Undo?, count: integer?): SpecialExecutor
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SpecialExecutor
function SpecialExecutors:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SpecialExecutor"): SpecialExecutor
---@overload fun(name: string, class: nil): SpecialExecutor
function SpecialExecutors:Find(name, class) end
---@overload fun(name: string, class: "SpecialExecutor"): SpecialExecutor
---@overload fun(name: string, class: nil): Object
function SpecialExecutors:FindRecursive(name, class) end
