---@meta

---@class HardwareConfigurations: Object
local HardwareConfigurations = {}
---@return "HardwareConfigurations"
function HardwareConfigurations:GetClass() end
---@return "HardwareConfiguration"
function HardwareConfigurations:GetChildClass() end
---@return Root
function HardwareConfigurations:Parent() end
---@param index integer
---@return HardwareConfiguration
function HardwareConfigurations:Ptr(index) end
---@return HardwareConfiguration[]
function HardwareConfigurations:Children() end
---@return HardwareConfiguration?
function HardwareConfigurations:CurrentChild() end
---@overload fun(name: integer, role: nil): HardwareConfiguration
function HardwareConfigurations:Get(name, role) end
---@overload fun(index: integer, class: "HardwareConfiguration", undo: Undo?): HardwareConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?): HardwareConfiguration
function HardwareConfigurations:Create(index, class, undo) end
---@overload fun(class: "HardwareConfiguration", undo: Undo?, count: integer?): HardwareConfiguration
---@overload fun(class: nil, undo: Undo?, count: integer?): HardwareConfiguration
function HardwareConfigurations:Append(class, undo, count) end
---@overload fun(class: "HardwareConfiguration", undo: Undo?): HardwareConfiguration
---@overload fun(class: nil, undo: Undo?): HardwareConfiguration
function HardwareConfigurations:Acquire(class, undo) end
---@overload fun(class: "HardwareConfiguration", undo: Undo?): HardwareConfiguration
---@overload fun(class: nil, undo: Undo?): HardwareConfiguration
---@deprecated use "Acquire" instead
function HardwareConfigurations:Aquire(class, undo) end
---@overload fun(index: integer, class: "HardwareConfiguration", undo: Undo?, count: integer?): HardwareConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): HardwareConfiguration
function HardwareConfigurations:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "HardwareConfiguration"): HardwareConfiguration
---@overload fun(name: string, class: nil): HardwareConfiguration
function HardwareConfigurations:Find(name, class) end
---@overload fun(name: string, class: "HardwareConfiguration"): HardwareConfiguration
---@overload fun(name: string, class: nil): Object
function HardwareConfigurations:FindRecursive(name, class) end
