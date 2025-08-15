---@meta

---@class MarkerTrack: Track
local MarkerTrack = {}
---@return "MarkerTrack"
function MarkerTrack:GetClass() end
---@return "Marker"
function MarkerTrack:GetChildClass() end
---@generic T : MarkerTrack
---@param class `T`
---@return boolean
function MarkerTrack:IsClass(class) end
---@param index integer
---@return Marker
function MarkerTrack:Ptr(index) end
---@return Marker[]
function MarkerTrack:Children() end
---@return Marker?
function MarkerTrack:CurrentChild() end
---@overload fun(name: integer, role: nil): Marker
function MarkerTrack:Get(name, role) end
---@generic T : Marker
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Marker
function MarkerTrack:Create(index, class, undo) end
---@generic T : Marker
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Marker
function MarkerTrack:Append(class, undo, count) end
---@generic T : Marker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Marker
function MarkerTrack:Acquire(class, undo) end
---@generic T : Marker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Marker
---@deprecated use "Acquire" instead
function MarkerTrack:Aquire(class, undo) end
---@generic T : Marker
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Marker
function MarkerTrack:Insert(index, class, undo, count) end
---@generic T : Marker
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Marker
function MarkerTrack:Find(class, undo) end
function MarkerTrack:Play(property_name, property_value) end