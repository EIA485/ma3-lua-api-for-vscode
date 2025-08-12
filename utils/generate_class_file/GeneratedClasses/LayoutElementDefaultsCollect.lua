---@meta

---@class LayoutElementDefaultsCollect: Object
local LayoutElementDefaultsCollect = {}
---@return "LayoutElementDefaultsCollect"
function LayoutElementDefaultsCollect:GetClass() end
---@return "LayoutElementDefaults"
function LayoutElementDefaultsCollect:GetChildClass() end
---@param index integer
---@return LayoutElementDefaults
function LayoutElementDefaultsCollect:Ptr(index) end
---@return LayoutElementDefaults[]
function LayoutElementDefaultsCollect:Children() end
---@return LayoutElementDefaults?
function LayoutElementDefaultsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): LayoutElementDefaults
function LayoutElementDefaultsCollect:Get(name, role) end
---@overload fun(index: integer, class: "LayoutElementDefaults", undo: Undo?): LayoutElementDefaults
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Create(index, class, undo) end
---@overload fun(class: "LayoutElementDefaults", undo: Undo?, count: integer?): LayoutElementDefaults
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Append(class, undo, count) end
---@overload fun(class: "LayoutElementDefaults", undo: Undo?): LayoutElementDefaults
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Acquire(class, undo) end
---@overload fun(class: "LayoutElementDefaults", undo: Undo?): LayoutElementDefaults
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
---@deprecated use "Acquire" instead
function LayoutElementDefaultsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "LayoutElementDefaults", undo: Undo?, count: integer?): LayoutElementDefaults
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "LayoutElementDefaults"): LayoutElementDefaults
---@overload fun(name: string, class: nil): LayoutElementDefaults
function LayoutElementDefaultsCollect:Find(name, class) end
---@overload fun(name: string, class: "LayoutElementDefaults"): LayoutElementDefaults
---@overload fun(name: string, class: nil): Object
function LayoutElementDefaultsCollect:FindRecursive(name, class) end
