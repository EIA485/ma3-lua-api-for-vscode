---@meta

---@class ColorDefCollect: Object A container for all defined colors in the system
local ColorDefCollect = {}
---@return "ColorDefCollect"
function ColorDefCollect:GetClass() end
---@return "ColorDefGroup"
function ColorDefCollect:GetChildClass() end
---@generic T : ColorDefCollect
---@param class `T`
---@return boolean
function ColorDefCollect:IsClass(class) end
---@return ColorTheme
function ColorDefCollect:Parent() end
---@param index integer
---@return ColorDefGroup
function ColorDefCollect:Ptr(index) end
---@return ColorDefGroup[]
function ColorDefCollect:Children() end
---@return ColorDefGroup?
function ColorDefCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ColorDefGroup
function ColorDefCollect:Get(name, role) end
---@generic T : ColorDefGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ColorDefGroup
function ColorDefCollect:Create(index, class, undo) end
---@generic T : ColorDefGroup
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorDefGroup
function ColorDefCollect:Append(class, undo, count) end
---@generic T : ColorDefGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorDefGroup
function ColorDefCollect:Acquire(class, undo) end
---@generic T : ColorDefGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorDefGroup
---@deprecated use "Acquire" instead
function ColorDefCollect:Aquire(class, undo) end
---@generic T : ColorDefGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorDefGroup
function ColorDefCollect:Insert(index, class, undo, count) end
---@generic T : ColorDefGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorDefGroup
function ColorDefCollect:Find(class, undo) end
function ColorDefCollect:SetChildren(property_name, property_value) end