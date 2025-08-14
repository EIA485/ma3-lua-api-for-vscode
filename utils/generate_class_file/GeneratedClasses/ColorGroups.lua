---@meta

---@class ColorGroups: Object A container color groups.
local ColorGroups = {}
---@return "ColorGroups"
function ColorGroups:GetClass() end
---@return "ColorGroup"
function ColorGroups:GetChildClass() end
---@return ColorTheme
function ColorGroups:Parent() end
---@param index integer
---@return ColorGroup
function ColorGroups:Ptr(index) end
---@return ColorGroup[]
function ColorGroups:Children() end
---@return ColorGroup?
function ColorGroups:CurrentChild() end
---@overload fun(name: integer, role: nil): ColorGroup
function ColorGroups:Get(name, role) end
---@generic T : ColorGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ColorGroup
function ColorGroups:Create(index, class, undo) end
---@generic T : ColorGroup
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorGroup
function ColorGroups:Append(class, undo, count) end
---@generic T : ColorGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorGroup
function ColorGroups:Acquire(class, undo) end
---@generic T : ColorGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorGroup
---@deprecated use "Acquire" instead
function ColorGroups:Aquire(class, undo) end
---@generic T : ColorGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorGroup
function ColorGroups:Insert(index, class, undo, count) end
---@generic T : ColorGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorGroup
function ColorGroups:Find(class, undo) end