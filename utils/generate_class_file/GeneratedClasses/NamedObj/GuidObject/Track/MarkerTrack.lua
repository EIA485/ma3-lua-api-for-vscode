---@meta

---@class MarkerTrack: Track
local MarkerTrack = {}
---@return "MarkerTrack"
function MarkerTrack:GetClass() end
---@return "Marker"
function MarkerTrack:GetChildClass() end
---@param index integer
---@return Marker
function MarkerTrack:Ptr(index) end
---@return Marker[]
function MarkerTrack:Children() end
---@return Marker?
function MarkerTrack:CurrentChild() end
---@overload fun(name: integer, role: nil): Marker
function MarkerTrack:Get(name, role) end
---@overload fun(index: integer, class: "Marker", undo: Undo?): Marker
---@overload fun(index: integer, class: nil, undo: Undo?): Marker
function MarkerTrack:Create(index, class, undo) end
---@overload fun(class: "Marker", undo: Undo?, count: integer?): Marker
---@overload fun(class: nil, undo: Undo?, count: integer?): Marker
function MarkerTrack:Append(class, undo, count) end
---@overload fun(class: "Marker", undo: Undo?): Marker
---@overload fun(class: nil, undo: Undo?): Marker
function MarkerTrack:Acquire(class, undo) end
---@overload fun(class: "Marker", undo: Undo?): Marker
---@overload fun(class: nil, undo: Undo?): Marker
---@deprecated use "Acquire" instead
function MarkerTrack:Aquire(class, undo) end
---@overload fun(index: integer, class: "Marker", undo: Undo?, count: integer?): Marker
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Marker
function MarkerTrack:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Marker"): Marker
---@overload fun(name: string, class: nil): Marker
function MarkerTrack:Find(name, class) end
---@overload fun(name: string, class: "Marker"): Marker
---@overload fun(name: string, class: nil): Object
function MarkerTrack:FindRecursive(name, class) end
