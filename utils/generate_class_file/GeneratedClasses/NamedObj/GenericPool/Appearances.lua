---@meta

---@class Appearances: GenericPool
local Appearances = {}
---@return "Appearances"
function Appearances:GetClass() end
---@return "Appearance"
function Appearances:GetChildClass() end
---@generic T : Appearances
---@param class `T`
---@return boolean
function Appearances:IsClass(class) end
---@return ShowData
function Appearances:Parent() end
---@param index integer
---@return Appearance
function Appearances:Ptr(index) end
---@return Appearance[]
function Appearances:Children() end
---@return Appearance?
function Appearances:CurrentChild() end
---@overload fun(name: integer, role: nil): Appearance
function Appearances:Get(name, role) end
---@overload fun(index: integer, class: "Appearance", undo: Undo?): Appearance
---@overload fun(index: integer, class: "GeneratorBaseObject", undo: Undo?): GeneratorBaseObject
---@overload fun(index: integer, class: nil, undo: Undo?): Appearance
function Appearances:Create(index, class, undo) end
---@overload fun(class: "Appearance", undo: Undo?, count: integer?): Appearance
---@overload fun(class: "GeneratorBaseObject", undo: Undo?, count: integer?): GeneratorBaseObject
---@overload fun(class: nil, undo: Undo?, count: integer?): Appearance
function Appearances:Append(class, undo, count) end
---@overload fun(class: "Appearance", undo: Undo?): Appearance
---@overload fun(class: "GeneratorBaseObject", undo: Undo?): GeneratorBaseObject
---@overload fun(class: nil, undo: Undo?): Appearance
function Appearances:Acquire(class, undo) end
---@overload fun(class: "Appearance", undo: Undo?): Appearance
---@overload fun(class: "GeneratorBaseObject", undo: Undo?): GeneratorBaseObject
---@overload fun(class: nil, undo: Undo?): Appearance
---@deprecated use "Acquire" instead
function Appearances:Aquire(class, undo) end
---@overload fun(index: integer, class: "Appearance", undo: Undo?, count: integer?): Appearance
---@overload fun(index: integer, class: "GeneratorBaseObject", undo: Undo?, count: integer?): GeneratorBaseObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Appearance
function Appearances:Insert(index, class, undo, count) end
---@overload fun(class: "Appearance", undo: Undo?): Appearance
---@overload fun(class: "GeneratorBaseObject", undo: Undo?): GeneratorBaseObject
---@overload fun(class: nil, undo: Undo?): Appearance
function Appearances:Find(class, undo) end
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "CreatedBy", property_value: CreateBy)
---@overload fun(property_name: "ImageMode", property_value: ImageBackGroundMode)
---@overload fun(property_name: "MediaFileName", property_value: string)
---@overload fun(property_name: "ImageRotation", property_value: ImageRotation)
---@overload fun(property_name: "ImageMirror", property_value: ImageMirror)
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "CreatedBy", property_value: CreateBy)
---@overload fun(property_name: "ImageMode", property_value: ImageBackGroundMode)
---@overload fun(property_name: "ImageMirror", property_value: ImageMirror)
---@overload fun(property_name: "ImageRotation", property_value: ImageRotation)
---@overload fun(property_name: "BackG"|"IPX"|"BackB"|"IPY"|"BackAlpha"|"IPW"|"BackR"|"IPH", property_value: integer)
---@overload fun(property_name: "MediaFileName", property_value: string)
function Appearances:SetChildren(property_name, property_value) end