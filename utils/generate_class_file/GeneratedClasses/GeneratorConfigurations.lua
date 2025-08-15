---@meta

---@class GeneratorConfigurations: Object
local GeneratorConfigurations = {}
---@return "GeneratorConfigurations"
function GeneratorConfigurations:GetClass() end
---@return "GeneratorConfiguration"
function GeneratorConfigurations:GetChildClass() end
---@generic T : GeneratorConfigurations
---@param class `T`
---@return boolean
function GeneratorConfigurations:IsClass(class) end
---@return GeneratorBaseObject
function GeneratorConfigurations:Parent() end
---@param index integer
---@return GeneratorConfiguration
function GeneratorConfigurations:Ptr(index) end
---@return GeneratorConfiguration[]
function GeneratorConfigurations:Children() end
---@return GeneratorConfiguration?
function GeneratorConfigurations:CurrentChild() end
---@overload fun(name: integer, role: nil): GeneratorConfiguration
function GeneratorConfigurations:Get(name, role) end
---@overload fun(index: integer, class: "GeneratorConfiguration", undo: Undo?): GeneratorConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?): GeneratorConfiguration
function GeneratorConfigurations:Create(index, class, undo) end
---@overload fun(class: "GeneratorConfiguration", undo: Undo?, count: integer?): GeneratorConfiguration
---@overload fun(class: nil, undo: Undo?, count: integer?): GeneratorConfiguration
function GeneratorConfigurations:Append(class, undo, count) end
---@overload fun(class: "GeneratorConfiguration", undo: Undo?): GeneratorConfiguration
---@overload fun(class: nil, undo: Undo?): GeneratorConfiguration
function GeneratorConfigurations:Acquire(class, undo) end
---@overload fun(class: "GeneratorConfiguration", undo: Undo?): GeneratorConfiguration
---@overload fun(class: nil, undo: Undo?): GeneratorConfiguration
---@deprecated use "Acquire" instead
function GeneratorConfigurations:Aquire(class, undo) end
---@overload fun(index: integer, class: "GeneratorConfiguration", undo: Undo?, count: integer?): GeneratorConfiguration
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GeneratorConfiguration
function GeneratorConfigurations:Insert(index, class, undo, count) end
---@overload fun(class: "GeneratorConfiguration", undo: Undo?): GeneratorConfiguration
---@overload fun(class: nil, undo: Undo?): GeneratorConfiguration
function GeneratorConfigurations:Find(class, undo) end
function GeneratorConfigurations:ActiveDisplay(property_name, property_value) end