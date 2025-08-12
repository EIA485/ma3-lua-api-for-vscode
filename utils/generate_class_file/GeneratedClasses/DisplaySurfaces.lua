---@meta

---@class DisplaySurfaces: Object grandma2 thing. Container for all surfaces.
local DisplaySurfaces = {}
---@return "DisplaySurfaces"
function DisplaySurfaces:GetClass() end
---@return "DisplaySurface"
function DisplaySurfaces:GetChildClass() end
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
---@overload fun(index: integer, class: "DisplaySurface", undo: Undo?): DisplaySurface
---@overload fun(index: integer, class: nil, undo: Undo?): DisplaySurface
function DisplaySurfaces:Create(index, class, undo) end
---@overload fun(class: "DisplaySurface", undo: Undo?, count: integer?): DisplaySurface
---@overload fun(class: nil, undo: Undo?, count: integer?): DisplaySurface
function DisplaySurfaces:Append(class, undo, count) end
---@overload fun(class: "DisplaySurface", undo: Undo?): DisplaySurface
---@overload fun(class: nil, undo: Undo?): DisplaySurface
function DisplaySurfaces:Acquire(class, undo) end
---@overload fun(class: "DisplaySurface", undo: Undo?): DisplaySurface
---@overload fun(class: nil, undo: Undo?): DisplaySurface
---@deprecated use "Acquire" instead
function DisplaySurfaces:Aquire(class, undo) end
---@overload fun(index: integer, class: "DisplaySurface", undo: Undo?, count: integer?): DisplaySurface
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DisplaySurface
function DisplaySurfaces:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DisplaySurface"): DisplaySurface
---@overload fun(name: string, class: nil): DisplaySurface
function DisplaySurfaces:Find(name, class) end
---@overload fun(name: string, class: "DisplaySurface"): DisplaySurface
---@overload fun(name: string, class: nil): Object
function DisplaySurfaces:FindRecursive(name, class) end
