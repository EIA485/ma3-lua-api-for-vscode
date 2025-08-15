---@meta

---@class DmxAddresses: Object
local DmxAddresses = {}
---@return "DmxAddresses"
function DmxAddresses:GetClass() end
---@return "DMXAddress"
function DmxAddresses:GetChildClass() end
---@generic T : DmxAddresses
---@param class `T`
---@return boolean
function DmxAddresses:IsClass(class) end
---@return Patch
function DmxAddresses:Parent() end
---@param index integer
---@return DMXAddress
function DmxAddresses:Ptr(index) end
---@return DMXAddress[]
function DmxAddresses:Children() end
---@return DMXAddress?
function DmxAddresses:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXAddress
function DmxAddresses:Get(name, role) end
---@generic T : DMXAddress
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXAddress
function DmxAddresses:Create(index, class, undo) end
---@generic T : DMXAddress
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXAddress
function DmxAddresses:Append(class, undo, count) end
---@generic T : DMXAddress
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXAddress
function DmxAddresses:Acquire(class, undo) end
---@generic T : DMXAddress
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXAddress
---@deprecated use "Acquire" instead
function DmxAddresses:Aquire(class, undo) end
---@generic T : DMXAddress
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXAddress
function DmxAddresses:Insert(index, class, undo, count) end
---@generic T : DMXAddress
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXAddress
function DmxAddresses:Find(class, undo) end
function DmxAddresses:ActiveDisplay(property_name, property_value) end