---@meta

---@class ColorGroup: ColorThemeContent A container for colors.
local ColorGroup = {}
---@return "ColorGroup"
function ColorGroup:GetClass() end
---@return "Color"
function ColorGroup:GetChildClass() end
---@generic T : ColorGroup
---@param class `T`
---@return boolean
function ColorGroup:IsClass(class) end
---@return ColorGroups
function ColorGroup:Parent() end
---@param index integer
---@return Color
function ColorGroup:Ptr(index) end
---@return Color[]
function ColorGroup:Children() end
---@return Color?
function ColorGroup:CurrentChild() end
---@overload fun(name: integer, role: nil): Color
function ColorGroup:Get(name, role) end
---@generic T : Color
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Color
function ColorGroup:Create(index, class, undo) end
---@generic T : Color
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Color
function ColorGroup:Append(class, undo, count) end
---@generic T : Color
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Color
function ColorGroup:Acquire(class, undo) end
---@generic T : Color
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Color
---@deprecated use "Acquire" instead
function ColorGroup:Aquire(class, undo) end
---@generic T : Color
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Color
function ColorGroup:Insert(index, class, undo, count) end
---@generic T : Color
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Color
function ColorGroup:Find(class, undo) end
---@overload fun(property_name: "ColorDefRef", property_value: ColorDef)
---@overload fun(property_name: "Val32", property_value: integer)
---@overload fun(property_name: "RGBA", property_value: UColor)
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "ColorDefRef", property_value: ColorDef)
---@overload fun(property_name: "RGBA", property_value: UColor)
---@overload fun(property_name: "Val32", property_value: integer)
---@overload fun(property_name: "Name", property_value: string)
function ColorGroup:SetChildren(property_name, property_value) end