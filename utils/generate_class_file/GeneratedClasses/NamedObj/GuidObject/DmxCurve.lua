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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "CurveMode", role: nil): integer
---@overload fun(name: "MinX"|"MinY"|"MaxX"|"MaxY", role: nil): DMXPropertyValue
---@overload fun(name: "CurveIndex"|"CurveIndexOld"|"UseForVisualization", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"CurveMode"|"MinX"|"MinY"|"MaxX"|"MaxY"|"CurveIndex"|"CurveIndexOld"|"UseForVisualization", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DmxCurvePoint
function DmxCurve:Get(name, role) end
---@overload fun(index: integer, class: "DmxCurvePoint", undo: Undo?): DmxCurvePoint
---@overload fun(index: integer, class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Create(index, class, undo) end
---@overload fun(class: "DmxCurvePoint", undo: Undo?, count: integer?): DmxCurvePoint
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxCurvePoint
function DmxCurve:Append(class, undo, count) end
---@overload fun(class: "DmxCurvePoint", undo: Undo?): DmxCurvePoint
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Acquire(class, undo) end
---@overload fun(class: "DmxCurvePoint", undo: Undo?): DmxCurvePoint
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
---@deprecated use "Acquire" instead
function DmxCurve:Aquire(class, undo) end
---@overload fun(index: integer, class: "DmxCurvePoint", undo: Undo?, count: integer?): DmxCurvePoint
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxCurvePoint
function DmxCurve:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DmxCurvePoint"): DmxCurvePoint
---@overload fun(name: string, class: nil): DmxCurvePoint
function DmxCurve:Find(name, class) end
---@overload fun(name: string, class: "DmxCurvePoint"): DmxCurvePoint
---@overload fun(name: string, class: nil): Object
function DmxCurve:FindRecursive(name, class) end
