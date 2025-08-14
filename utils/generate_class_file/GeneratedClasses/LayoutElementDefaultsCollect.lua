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
---@generic T : LayoutElementDefaults
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Create(index, class, undo) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Append(class, undo, count) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Acquire(class, undo) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
---@deprecated use "Acquire" instead
function LayoutElementDefaultsCollect:Aquire(class, undo) end
---@generic T : LayoutElementDefaults
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Insert(index, class, undo, count) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Find(class, undo) end