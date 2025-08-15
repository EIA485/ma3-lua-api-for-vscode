---@meta

---@class Attributes: Object A container for attributes.
local Attributes = {}
---@return "Attributes"
function Attributes:GetClass() end
---@return "Attribute"
function Attributes:GetChildClass() end
---@generic T : Attributes
---@param class `T`
---@return boolean
function Attributes:IsClass(class) end
---@return AttributeDefinitions
function Attributes:Parent() end
---@param index integer
---@return Attribute
function Attributes:Ptr(index) end
---@return Attribute[]
function Attributes:Children() end
---@return Attribute?
function Attributes:CurrentChild() end
---@overload fun(name: integer, role: nil): Attribute
function Attributes:Get(name, role) end
---@generic T : Attribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Attribute
function Attributes:Create(index, class, undo) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Attribute
function Attributes:Append(class, undo, count) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Attribute
function Attributes:Acquire(class, undo) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Attribute
---@deprecated use "Acquire" instead
function Attributes:Aquire(class, undo) end
---@generic T : Attribute
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Attribute
function Attributes:Insert(index, class, undo, count) end
---@generic T : Attribute
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Attribute
function Attributes:Find(class, undo) end
---@overload fun(property_name: "Intensity", property_value: number)
---@overload fun(property_name: "Hide", property_value: Yes|true)
---@overload fun(property_name: "Feature", property_value: Feature)
---@overload fun(property_name: "PhysicalUnit", property_value: PhysicalUnit)
---@overload fun(property_name: "GeometryType", property_value: GeometryType)
---@overload fun(property_name: "Pretty", property_value: string)
---@overload fun(property_name: "MainAttribute", property_value: Attribute)
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "ActivationGroup", property_value: ActivationGroup)
---@overload fun(property_name: "NaturalReadout", property_value: ValueReadoutMode)
---@overload fun(property_name: "EncoderResolution", property_value: AttriebuteEncoderResolution)
---@overload fun(property_name: "Special", property_value: SpecialAttribute)
---@overload fun(property_name: "ActivationGroup", property_value: ActivationGroup)
---@overload fun(property_name: "MainAttribute", property_value: Attribute)
---@overload fun(property_name: "EncoderResolution", property_value: AttriebuteEncoderResolution)
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Feature", property_value: Feature)
---@overload fun(property_name: "GeometryType", property_value: GeometryType)
---@overload fun(property_name: "PhysicalUnit", property_value: PhysicalUnit)
---@overload fun(property_name: "Special", property_value: SpecialAttribute)
---@overload fun(property_name: "NaturalReadout", property_value: ValueReadoutMode)
---@overload fun(property_name: "Hide", property_value: Yes|true)
---@overload fun(property_name: "ChannelFunctions"|"SpecialIndex"|"AttributeIndex"|"AttributeIndexOld"|"LogChannels", property_value: integer)
---@overload fun(property_name: "Intensity", property_value: number)
---@overload fun(property_name: "Pretty", property_value: string)
function Attributes:Special(property_name, property_value) end