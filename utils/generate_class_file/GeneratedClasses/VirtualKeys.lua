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
---@overload fun(index: integer, class: "VirtualKey", undo: Undo?): VirtualKey
---@overload fun(index: integer, class: nil, undo: Undo?): VirtualKey
function VirtualKeys:Create(index, class, undo) end
---@overload fun(class: "VirtualKey", undo: Undo?, count: integer?): VirtualKey
---@overload fun(class: nil, undo: Undo?, count: integer?): VirtualKey
function VirtualKeys:Append(class, undo, count) end
---@overload fun(class: "VirtualKey", undo: Undo?): VirtualKey
---@overload fun(class: nil, undo: Undo?): VirtualKey
function VirtualKeys:Acquire(class, undo) end
---@overload fun(class: "VirtualKey", undo: Undo?): VirtualKey
---@overload fun(class: nil, undo: Undo?): VirtualKey
---@deprecated use "Acquire" instead
function VirtualKeys:Aquire(class, undo) end
---@overload fun(index: integer, class: "VirtualKey", undo: Undo?, count: integer?): VirtualKey
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): VirtualKey
function VirtualKeys:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "VirtualKey"): VirtualKey
---@overload fun(name: string, class: nil): VirtualKey
function VirtualKeys:Find(name, class) end
---@overload fun(name: string, class: "VirtualKey"): VirtualKey
---@overload fun(name: string, class: nil): Object
function VirtualKeys:FindRecursive(name, class) end
