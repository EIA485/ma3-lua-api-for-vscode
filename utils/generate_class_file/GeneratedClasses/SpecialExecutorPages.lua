---@meta

---@class SpecialExecutorPages: Object
local SpecialExecutorPages = {}
---@return "SpecialExecutorPages"
function SpecialExecutorPages:GetClass() end
---@return "SpecialExecutors"
function SpecialExecutorPages:GetChildClass() end
---@generic T : SpecialExecutorPages
---@param class `T`
---@return boolean
function SpecialExecutorPages:IsClass(class) end
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
---@generic T : SpecialExecutors
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SpecialExecutors
function SpecialExecutorPages:Create(index, class, undo) end
---@generic T : SpecialExecutors
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SpecialExecutors
function SpecialExecutorPages:Append(class, undo, count) end
---@generic T : SpecialExecutors
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialExecutors
function SpecialExecutorPages:Acquire(class, undo) end
---@generic T : SpecialExecutors
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialExecutors
---@deprecated use "Acquire" instead
function SpecialExecutorPages:Aquire(class, undo) end
---@generic T : SpecialExecutors
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SpecialExecutors
function SpecialExecutorPages:Insert(index, class, undo, count) end
---@generic T : SpecialExecutors
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialExecutors
function SpecialExecutorPages:Find(class, undo) end
function SpecialExecutorPages:ExecutorIndex(property_name, property_value) end