---@meta

---@class ColorDefGroup: ColorThemeContent A group of RGBA color definitions
local ColorDefGroup = {}
---@return "ColorDefGroup"
function ColorDefGroup:GetClass() end
---@return "ColorDef"
function ColorDefGroup:GetChildClass() end
---@generic T : ColorDefGroup
---@param class `T`
---@return boolean
function ColorDefGroup:IsClass(class) end
---@return ColorDefCollect
function ColorDefGroup:Parent() end
---@param index integer
---@return ColorDef
function ColorDefGroup:Ptr(index) end
---@return ColorDef[]
function ColorDefGroup:Children() end
---@return ColorDef?
function ColorDefGroup:CurrentChild() end
---@overload fun(name: integer, role: nil): ColorDef
function ColorDefGroup:Get(name, role) end
---@generic T : ColorDef
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ColorDef
function ColorDefGroup:Create(index, class, undo) end
---@generic T : ColorDef
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorDef
function ColorDefGroup:Append(class, undo, count) end
---@generic T : ColorDef
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorDef
function ColorDefGroup:Acquire(class, undo) end
---@generic T : ColorDef
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorDef
---@deprecated use "Acquire" instead
function ColorDefGroup:Aquire(class, undo) end
---@generic T : ColorDef
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorDef
function ColorDefGroup:Insert(index, class, undo, count) end
---@generic T : ColorDef
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorDef
function ColorDefGroup:Find(class, undo) end
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "RGBA", property_value: UColor)
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "RGBA", property_value: UColor)
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "Name", property_value: string)
function ColorDefGroup:Used(property_name, property_value) end