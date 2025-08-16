---@meta

---@class SpecialExecutors: Page
local SpecialExecutors = {}
---@return "SpecialExecutors"
function SpecialExecutors:GetClass() end
---@return "SpecialExecutor"
function SpecialExecutors:GetChildClass() end
---@generic T : SpecialExecutors
---@param class `T`
---@return boolean
function SpecialExecutors:IsClass(class) end
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
---@generic T : SpecialExecutor
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SpecialExecutor
function SpecialExecutors:Create(index, class, undo) end
---@generic T : SpecialExecutor
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SpecialExecutor
function SpecialExecutors:Append(class, undo, count) end
---@generic T : SpecialExecutor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialExecutor
function SpecialExecutors:Acquire(class, undo) end
---@generic T : SpecialExecutor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialExecutor
---@deprecated use "Acquire" instead
function SpecialExecutors:Aquire(class, undo) end
---@generic T : SpecialExecutor
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SpecialExecutor
function SpecialExecutors:Insert(index, class, undo, count) end
---@generic T : SpecialExecutor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialExecutor
function SpecialExecutors:Find(class, undo) end
function SpecialExecutors:SetChildren(property_name, property_value) end