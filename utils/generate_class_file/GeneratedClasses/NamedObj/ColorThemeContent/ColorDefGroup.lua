---@meta

---@class ColorDefGroup: ColorThemeContent A group of RGBA color definitions
local ColorDefGroup = {}
---@return "ColorDefGroup"
function ColorDefGroup:GetClass() end
---@return "ColorDef"
function ColorDefGroup:GetChildClass() end
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
---@overload fun(index: integer, class: "ColorDef", undo: Undo?): ColorDef
---@overload fun(index: integer, class: nil, undo: Undo?): ColorDef
function ColorDefGroup:Create(index, class, undo) end
---@overload fun(class: "ColorDef", undo: Undo?, count: integer?): ColorDef
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorDef
function ColorDefGroup:Append(class, undo, count) end
---@overload fun(class: "ColorDef", undo: Undo?): ColorDef
---@overload fun(class: nil, undo: Undo?): ColorDef
function ColorDefGroup:Acquire(class, undo) end
---@overload fun(class: "ColorDef", undo: Undo?): ColorDef
---@overload fun(class: nil, undo: Undo?): ColorDef
---@deprecated use "Acquire" instead
function ColorDefGroup:Aquire(class, undo) end
---@overload fun(index: integer, class: "ColorDef", undo: Undo?, count: integer?): ColorDef
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorDef
function ColorDefGroup:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ColorDef"): ColorDef
---@overload fun(name: string, class: nil): ColorDef
function ColorDefGroup:Find(name, class) end
---@overload fun(name: string, class: "ColorDef"): ColorDef
---@overload fun(name: string, class: nil): Object
function ColorDefGroup:FindRecursive(name, class) end
