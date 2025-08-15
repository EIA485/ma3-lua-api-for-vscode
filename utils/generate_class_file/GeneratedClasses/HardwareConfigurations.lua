---@meta

---@class HardwareConfigurations: Object
local HardwareConfigurations = {}
---@return "HardwareConfigurations"
function HardwareConfigurations:GetClass() end
---@return "HardwareConfiguration"
function HardwareConfigurations:GetChildClass() end
---@generic T : HardwareConfigurations
---@param class `T`
---@return boolean
function HardwareConfigurations:IsClass(class) end
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
---@generic T : HardwareConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): HardwareConfiguration
function HardwareConfigurations:Create(index, class, undo) end
---@generic T : HardwareConfiguration
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): HardwareConfiguration
function HardwareConfigurations:Append(class, undo, count) end
---@generic T : HardwareConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): HardwareConfiguration
function HardwareConfigurations:Acquire(class, undo) end
---@generic T : HardwareConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): HardwareConfiguration
---@deprecated use "Acquire" instead
function HardwareConfigurations:Aquire(class, undo) end
---@generic T : HardwareConfiguration
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): HardwareConfiguration
function HardwareConfigurations:Insert(index, class, undo, count) end
---@generic T : HardwareConfiguration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): HardwareConfiguration
function HardwareConfigurations:Find(class, undo) end
---@overload fun(property_name: "IsWing", property_value: YesNo|boolean)
---@overload fun(property_name: "ModuleVersion", property_value: string)
---@overload fun(property_name: "IsWing", property_value: YesNo|boolean)
---@overload fun(property_name: "ModuleVersion", property_value: string)
function HardwareConfigurations:ModuleVersion(property_name, property_value) end