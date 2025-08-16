---@meta

---@class MasterPoolTiming: MasterPool
local MasterPoolTiming = {}
---@return "MasterPoolTiming"
function MasterPoolTiming:GetClass() end
---@return "MasterTiming"
function MasterPoolTiming:GetChildClass() end
---@generic T : MasterPoolTiming
---@param class `T`
---@return boolean
function MasterPoolTiming:IsClass(class) end
---@param index integer
---@return MasterTiming
function MasterPoolTiming:Ptr(index) end
---@return MasterTiming[]
function MasterPoolTiming:Children() end
---@return MasterTiming?
function MasterPoolTiming:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterTiming
function MasterPoolTiming:Get(name, role) end
---@generic T : MasterTiming
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MasterTiming
function MasterPoolTiming:Create(index, class, undo) end
---@generic T : MasterTiming
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterTiming
function MasterPoolTiming:Append(class, undo, count) end
---@generic T : MasterTiming
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterTiming
function MasterPoolTiming:Acquire(class, undo) end
---@generic T : MasterTiming
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterTiming
---@deprecated use "Acquire" instead
function MasterPoolTiming:Aquire(class, undo) end
---@generic T : MasterTiming
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterTiming
function MasterPoolTiming:Insert(index, class, undo, count) end
---@generic T : MasterTiming
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterTiming
function MasterPoolTiming:Find(class, undo) end
function MasterPoolTiming:SetChildren(property_name, property_value) end