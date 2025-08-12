---@meta

---@class ColorDefCollect: Object A container for all defined colors in the system
local ColorDefCollect = {}
---@return "ColorDefCollect"
function ColorDefCollect:GetClass() end
---@return "ColorDefGroup"
function ColorDefCollect:GetChildClass() end
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
---@overload fun(index: integer, class: "ColorDefGroup", undo: Undo?): ColorDefGroup
---@overload fun(index: integer, class: nil, undo: Undo?): ColorDefGroup
function ColorDefCollect:Create(index, class, undo) end
---@overload fun(class: "ColorDefGroup", undo: Undo?, count: integer?): ColorDefGroup
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorDefGroup
function ColorDefCollect:Append(class, undo, count) end
---@overload fun(class: "ColorDefGroup", undo: Undo?): ColorDefGroup
---@overload fun(class: nil, undo: Undo?): ColorDefGroup
function ColorDefCollect:Acquire(class, undo) end
---@overload fun(class: "ColorDefGroup", undo: Undo?): ColorDefGroup
---@overload fun(class: nil, undo: Undo?): ColorDefGroup
---@deprecated use "Acquire" instead
function ColorDefCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ColorDefGroup", undo: Undo?, count: integer?): ColorDefGroup
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorDefGroup
function ColorDefCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ColorDefGroup"): ColorDefGroup
---@overload fun(name: string, class: nil): ColorDefGroup
function ColorDefCollect:Find(name, class) end
---@overload fun(name: string, class: "ColorDefGroup"): ColorDefGroup
---@overload fun(name: string, class: nil): Object
function ColorDefCollect:FindRecursive(name, class) end
