---@meta

---@class GeneratorChannels: Object
local GeneratorChannels = {}
---@return "GeneratorChannels"
function GeneratorChannels:GetClass() end
---@return "GeneratorBaseChannel"
function GeneratorChannels:GetChildClass() end
---@generic T : GeneratorChannels
---@param class `T`
---@return boolean
function GeneratorChannels:IsClass(class) end
---@return GeneratorBaseObject
function GeneratorChannels:Parent() end
---@param index integer
---@return GeneratorBaseChannel
function GeneratorChannels:Ptr(index) end
---@return GeneratorBaseChannel[]
function GeneratorChannels:Children() end
---@return GeneratorBaseChannel?
function GeneratorChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): GeneratorBaseChannel
function GeneratorChannels:Get(name, role) end
---@overload fun(index: integer, class: "GeneratorBaseChannel", undo: Undo?): GeneratorBaseChannel
---@overload fun(index: integer, class: nil, undo: Undo?): GeneratorBaseChannel
function GeneratorChannels:Create(index, class, undo) end
---@overload fun(class: "GeneratorBaseChannel", undo: Undo?, count: integer?): GeneratorBaseChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): GeneratorBaseChannel
function GeneratorChannels:Append(class, undo, count) end
---@overload fun(class: "GeneratorBaseChannel", undo: Undo?): GeneratorBaseChannel
---@overload fun(class: nil, undo: Undo?): GeneratorBaseChannel
function GeneratorChannels:Acquire(class, undo) end
---@overload fun(class: "GeneratorBaseChannel", undo: Undo?): GeneratorBaseChannel
---@overload fun(class: nil, undo: Undo?): GeneratorBaseChannel
---@deprecated use "Acquire" instead
function GeneratorChannels:Aquire(class, undo) end
---@overload fun(index: integer, class: "GeneratorBaseChannel", undo: Undo?, count: integer?): GeneratorBaseChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GeneratorBaseChannel
function GeneratorChannels:Insert(index, class, undo, count) end
---@overload fun(class: "GeneratorBaseChannel", undo: Undo?): GeneratorBaseChannel
---@overload fun(class: nil, undo: Undo?): GeneratorBaseChannel
function GeneratorChannels:Find(class, undo) end
---@overload fun(property_name: "VirtualDimmer", property_value: GenVirtualDimmer|boolean)
---@overload fun(property_name: "Attribute", property_value: AttributeIndexPropertyValue)
---@overload fun(property_name: "Attribute", property_value: AttributeIndexPropertyValue)
---@overload fun(property_name: "VirtualDimmer", property_value: GenVirtualDimmer|boolean)
function GeneratorChannels:Attribute(property_name, property_value) end