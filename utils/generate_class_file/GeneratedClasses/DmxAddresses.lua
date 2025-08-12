---@meta

---@class DmxAddresses: Object
local DmxAddresses = {}
---@return "DmxAddresses"
function DmxAddresses:GetClass() end
---@return "DMXAddress"
function DmxAddresses:GetChildClass() end
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
---@overload fun(index: integer, class: "DMXAddress", undo: Undo?): DMXAddress
---@overload fun(index: integer, class: nil, undo: Undo?): DMXAddress
function DmxAddresses:Create(index, class, undo) end
---@overload fun(class: "DMXAddress", undo: Undo?, count: integer?): DMXAddress
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXAddress
function DmxAddresses:Append(class, undo, count) end
---@overload fun(class: "DMXAddress", undo: Undo?): DMXAddress
---@overload fun(class: nil, undo: Undo?): DMXAddress
function DmxAddresses:Acquire(class, undo) end
---@overload fun(class: "DMXAddress", undo: Undo?): DMXAddress
---@overload fun(class: nil, undo: Undo?): DMXAddress
---@deprecated use "Acquire" instead
function DmxAddresses:Aquire(class, undo) end
---@overload fun(index: integer, class: "DMXAddress", undo: Undo?, count: integer?): DMXAddress
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXAddress
function DmxAddresses:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DMXAddress"): DMXAddress
---@overload fun(name: string, class: nil): DMXAddress
function DmxAddresses:Find(name, class) end
---@overload fun(name: string, class: "DMXAddress"): DMXAddress
---@overload fun(name: string, class: nil): Object
function DmxAddresses:FindRecursive(name, class) end
