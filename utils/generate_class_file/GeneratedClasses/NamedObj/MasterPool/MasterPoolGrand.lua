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
---@generic T : MasterGrand
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MasterGrand
function MasterPoolGrand:Create(index, class, undo) end
---@generic T : MasterGrand
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterGrand
function MasterPoolGrand:Append(class, undo, count) end
---@generic T : MasterGrand
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterGrand
function MasterPoolGrand:Acquire(class, undo) end
---@generic T : MasterGrand
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterGrand
---@deprecated use "Acquire" instead
function MasterPoolGrand:Aquire(class, undo) end
---@generic T : MasterGrand
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterGrand
function MasterPoolGrand:Insert(index, class, undo, count) end
---@generic T : MasterGrand
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterGrand
function MasterPoolGrand:Find(class, undo) end