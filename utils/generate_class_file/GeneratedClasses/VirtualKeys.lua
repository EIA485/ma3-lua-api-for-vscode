---@meta

---@class VirtualKeys: Object A container for all virtual hardkey definitions.
local VirtualKeys = {}
---@return "VirtualKeys"
function VirtualKeys:GetClass() end
---@return "VirtualKey"
function VirtualKeys:GetChildClass() end
---@return Temp
function VirtualKeys:Parent() end
---@param index integer
---@return VirtualKey
function VirtualKeys:Ptr(index) end
---@return VirtualKey[]
function VirtualKeys:Children() end
---@return VirtualKey?
function VirtualKeys:CurrentChild() end
---@overload fun(name: integer, role: nil): VirtualKey
function VirtualKeys:Get(name, role) end
---@generic T : VirtualKey
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): VirtualKey
function VirtualKeys:Create(index, class, undo) end
---@generic T : VirtualKey
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): VirtualKey
function VirtualKeys:Append(class, undo, count) end
---@generic T : VirtualKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VirtualKey
function VirtualKeys:Acquire(class, undo) end
---@generic T : VirtualKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VirtualKey
---@deprecated use "Acquire" instead
function VirtualKeys:Aquire(class, undo) end
---@generic T : VirtualKey
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): VirtualKey
function VirtualKeys:Insert(index, class, undo, count) end
---@generic T : VirtualKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VirtualKey
function VirtualKeys:Find(class, undo) end