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
---@overload fun(index: integer, class: "ColorGroup", undo: Undo?): ColorGroup
---@overload fun(index: integer, class: nil, undo: Undo?): ColorGroup
function ColorGroups:Create(index, class, undo) end
---@overload fun(class: "ColorGroup", undo: Undo?, count: integer?): ColorGroup
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorGroup
function ColorGroups:Append(class, undo, count) end
---@overload fun(class: "ColorGroup", undo: Undo?): ColorGroup
---@overload fun(class: nil, undo: Undo?): ColorGroup
function ColorGroups:Acquire(class, undo) end
---@overload fun(class: "ColorGroup", undo: Undo?): ColorGroup
---@overload fun(class: nil, undo: Undo?): ColorGroup
---@deprecated use "Acquire" instead
function ColorGroups:Aquire(class, undo) end
---@overload fun(index: integer, class: "ColorGroup", undo: Undo?, count: integer?): ColorGroup
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorGroup
function ColorGroups:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ColorGroup"): ColorGroup
---@overload fun(name: string, class: nil): ColorGroup
function ColorGroups:Find(name, class) end
---@overload fun(name: string, class: "ColorGroup"): ColorGroup
---@overload fun(name: string, class: nil): Object
function ColorGroups:FindRecursive(name, class) end
