---@meta

---@class MasterPoolPlayback: MasterPool
local MasterPoolPlayback = {}
---@return "MasterPoolPlayback"
function MasterPoolPlayback:GetClass() end
---@return "MasterPlayback"
function MasterPoolPlayback:GetChildClass() end
---@generic T : MasterPoolPlayback
---@param class `T`
---@return boolean
function MasterPoolPlayback:IsClass(class) end
---@param index integer
---@return MasterPlayback
function MasterPoolPlayback:Ptr(index) end
---@return MasterPlayback[]
function MasterPoolPlayback:Children() end
---@return MasterPlayback?
function MasterPoolPlayback:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterPlayback
function MasterPoolPlayback:Get(name, role) end
---@generic T : MasterPlayback
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MasterPlayback
function MasterPoolPlayback:Create(index, class, undo) end
---@generic T : MasterPlayback
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterPlayback
function MasterPoolPlayback:Append(class, undo, count) end
---@generic T : MasterPlayback
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterPlayback
function MasterPoolPlayback:Acquire(class, undo) end
---@generic T : MasterPlayback
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterPlayback
---@deprecated use "Acquire" instead
function MasterPoolPlayback:Aquire(class, undo) end
---@generic T : MasterPlayback
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterPlayback
function MasterPoolPlayback:Insert(index, class, undo, count) end
---@generic T : MasterPlayback
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MasterPlayback
function MasterPoolPlayback:Find(class, undo) end
function MasterPoolPlayback:SpeedScale(property_name, property_value) end