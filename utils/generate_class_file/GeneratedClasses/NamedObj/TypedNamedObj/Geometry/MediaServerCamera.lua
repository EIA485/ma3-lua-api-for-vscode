---@meta

---@class MediaServerCamera: Geometry A specialized geometry that represents a media server camera.
local MediaServerCamera = {}
---@return "MediaServerCamera"
function MediaServerCamera:GetClass() end
---@return "Geometry"
function MediaServerCamera:GetChildClass() end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function MediaServerCamera:Create(index, class, undo) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function MediaServerCamera:Append(class, undo, count) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function MediaServerCamera:Acquire(class, undo) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function MediaServerCamera:Aquire(class, undo) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function MediaServerCamera:Insert(index, class, undo, count) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function MediaServerCamera:Find(class, undo) end