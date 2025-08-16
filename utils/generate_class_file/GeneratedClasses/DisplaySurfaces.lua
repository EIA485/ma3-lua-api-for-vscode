---@meta

---@class DisplaySurfaces: Object grandma2 thing. Container for all surfaces.
local DisplaySurfaces = {}
---@return "DisplaySurfaces"
function DisplaySurfaces:GetClass() end
---@return "DisplaySurface"
function DisplaySurfaces:GetChildClass() end
---@generic T : DisplaySurfaces
---@param class `T`
---@return boolean
function DisplaySurfaces:IsClass(class) end
---@return StationSettings
function DisplaySurfaces:Parent() end
---@param index integer
---@return DisplaySurface
function DisplaySurfaces:Ptr(index) end
---@return DisplaySurface[]
function DisplaySurfaces:Children() end
---@return DisplaySurface?
function DisplaySurfaces:CurrentChild() end
---@overload fun(name: integer, role: nil): DisplaySurface
function DisplaySurfaces:Get(name, role) end
---@generic T : DisplaySurface
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DisplaySurface
function DisplaySurfaces:Create(index, class, undo) end
---@generic T : DisplaySurface
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DisplaySurface
function DisplaySurfaces:Append(class, undo, count) end
---@generic T : DisplaySurface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DisplaySurface
function DisplaySurfaces:Acquire(class, undo) end
---@generic T : DisplaySurface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DisplaySurface
---@deprecated use "Acquire" instead
function DisplaySurfaces:Aquire(class, undo) end
---@generic T : DisplaySurface
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DisplaySurface
function DisplaySurfaces:Insert(index, class, undo, count) end
---@generic T : DisplaySurface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DisplaySurface
function DisplaySurfaces:Find(class, undo) end
function DisplaySurfaces:SetChildren(property_name, property_value) end