---@meta

---@class ColorGroup: ColorThemeContent A container for colors.
local ColorGroup = {}
---@return "ColorGroup"
function ColorGroup:GetClass() end
---@return "Color"
function ColorGroup:GetChildClass() end
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
---@overload fun(index: integer, class: "Color", undo: Undo?): Color
---@overload fun(index: integer, class: nil, undo: Undo?): Color
function ColorGroup:Create(index, class, undo) end
---@overload fun(class: "Color", undo: Undo?, count: integer?): Color
---@overload fun(class: nil, undo: Undo?, count: integer?): Color
function ColorGroup:Append(class, undo, count) end
---@overload fun(class: "Color", undo: Undo?): Color
---@overload fun(class: nil, undo: Undo?): Color
function ColorGroup:Acquire(class, undo) end
---@overload fun(class: "Color", undo: Undo?): Color
---@overload fun(class: nil, undo: Undo?): Color
---@deprecated use "Acquire" instead
function ColorGroup:Aquire(class, undo) end
---@overload fun(index: integer, class: "Color", undo: Undo?, count: integer?): Color
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Color
function ColorGroup:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Color"): Color
---@overload fun(name: string, class: nil): Color
function ColorGroup:Find(name, class) end
---@overload fun(name: string, class: "Color"): Color
---@overload fun(name: string, class: nil): Object
function ColorGroup:FindRecursive(name, class) end
