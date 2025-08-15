---@meta

---@class MasterPoolSelected: MasterPool
local MasterPoolSelected = {}
---@return "MasterPoolSelected"
function MasterPoolSelected:GetClass() end
---@return "MasterSelected"
function MasterPoolSelected:GetChildClass() end
---@generic T : MasterPoolSelected
---@param class `T`
---@return boolean
function MasterPoolSelected:IsClass(class) end
---@param index integer
---@return MasterSelected
function MasterPoolSelected:Ptr(index) end
---@return MasterSelected[]
function MasterPoolSelected:Children() end
---@return MasterSelected?
function MasterPoolSelected:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterSelected
function MasterPoolSelected:Get(name, role) end
---@generic T : MasterSelected
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MasterSelected
function MasterPoolSelected:Create(index, class, undo) end
---@generic T : MasterSelected
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterSelected
function MasterPoolSelected:Append(class, undo, count) end
---@generic T : MasterSelected
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterSelected
function MasterPoolSelected:Acquire(class, undo) end
---@generic T : MasterSelected
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterSelected
---@deprecated use "Acquire" instead
function MasterPoolSelected:Aquire(class, undo) end
---@generic T : MasterSelected
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterSelected
function MasterPoolSelected:Insert(index, class, undo, count) end
---@generic T : MasterSelected
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterSelected
function MasterPoolSelected:Find(class, undo) end
function MasterPoolSelected:SpeedScale(property_name, property_value) end