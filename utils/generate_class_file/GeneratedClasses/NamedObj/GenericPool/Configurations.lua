---@meta

---@class Configurations: GenericPool
local Configurations = {}
---@return "Configurations"
function Configurations:GetClass() end
---@return "Configuration"
function Configurations:GetChildClass() end
---@generic T : Configurations
---@param class `T`
---@return boolean
function Configurations:IsClass(class) end
---@return Pool
function Configurations:Parent() end
---@param index integer
---@return Configuration
function Configurations:Ptr(index) end
---@return Configuration[]
function Configurations:Children() end
---@return Configuration?
function Configurations:CurrentChild() end
---@overload fun(name: integer, role: nil): Configuration
function Configurations:Get(name, role) end
---@generic T : Configuration
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Configuration
function Configurations:Create(index, class, undo) end
---@generic T : Configuration
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Configuration
function Configurations:Append(class, undo, count) end
---@generic T : Configuration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Configuration
function Configurations:Acquire(class, undo) end
---@generic T : Configuration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Configuration
---@deprecated use "Acquire" instead
function Configurations:Aquire(class, undo) end
---@generic T : Configuration
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Configuration
function Configurations:Insert(index, class, undo, count) end
---@generic T : Configuration
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Configuration
function Configurations:Find(class, undo) end
---@overload fun(property_name: "ExecConfigType", property_value: ExecConfigType)
---@overload fun(property_name: "ExecConfigType", property_value: ExecConfigType)
---@overload fun(property_name: "Width"|"Height", property_value: integer)
function Configurations:ExecConfigType(property_name, property_value) end