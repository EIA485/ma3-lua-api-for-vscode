---@meta

---@class FilterGobo: Geometry A specialized geometry that represents a gobo filter in the light beam.
local FilterGobo = {}
---@return "FilterGobo"
function FilterGobo:GetClass() end
---@return "Geometry"
function FilterGobo:GetChildClass() end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function FilterGobo:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function FilterGobo:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function FilterGobo:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function FilterGobo:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function FilterGobo:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function FilterGobo:Find(class, undo) end