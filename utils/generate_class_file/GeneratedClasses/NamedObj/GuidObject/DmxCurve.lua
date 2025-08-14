---@meta

---@class DmxCurve: GuidObject
---@field CurveMode integer
---@field MinX DMXPropertyValue
---@field MinY DMXPropertyValue
---@field MaxX DMXPropertyValue
---@field MaxY DMXPropertyValue
---@field CurveIndex integer
---@field CurveIndexOld integer
---@field UseForVisualization integer
local DmxCurve = {
    UseForVisualization="Yes"
}
---@return "DmxCurve"
function DmxCurve:GetClass() end
---@return "DmxCurvePoint"
function DmxCurve:GetChildClass() end
---@return DmxCurves
function DmxCurve:Parent() end
---@param index integer
---@return DmxCurvePoint
function DmxCurve:Ptr(index) end
---@return DmxCurvePoint[]
function DmxCurve:Children() end
---@return DmxCurvePoint?
function DmxCurve:CurrentChild() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "MinX"|"MinY"|"MaxX"|"MaxY", role: nil): DMXPropertyValue
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "CurveMode"|"CurveIndex"|"CurveIndexOld"|"UseForVisualization"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "CurveMode"|"MinX"|"MinY"|"MaxX"|"MaxY"|"CurveIndex"|"CurveIndexOld"|"UseForVisualization"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DmxCurvePoint
function DmxCurve:Get(name, role) end
---@generic T : DmxCurvePoint
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Create(index, class, undo) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxCurvePoint
function DmxCurve:Append(class, undo, count) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Acquire(class, undo) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
---@deprecated use "Acquire" instead
function DmxCurve:Aquire(class, undo) end
---@generic T : DmxCurvePoint
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxCurvePoint
function DmxCurve:Insert(index, class, undo, count) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Find(class, undo) end