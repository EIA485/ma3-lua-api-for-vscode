---@meta

---@class Geometry: TypedNamedObj A base class for all geometry types.
---@field Model Model
---@field PosX LengthPropertyValue
---@field PosY LengthPropertyValue
---@field PosZ LengthPropertyValue
---@field RotX number
---@field RotY number
---@field RotZ number
---@field RotDirect Math.TQuaternion<float>
---@field GridAuto integer
---@field GridSwapXY integer
---@field GridInvX integer
---@field GridInvY integer
---@field GridInvZ integer
---@field GridX integer
---@field GridY integer
---@field GridZ integer
---@field MergeGeometries integer
local Geometry = {
    PosX="0.000000",
    PosY="0.000000",
    PosZ="0.000000",
    RotX="0",
    RotY="0",
    RotZ="0",
    GridAuto="Yes",
    GridSwapXY="No",
    GridInvX="No",
    GridInvY="No",
    GridInvZ="No",
    MergeGeometries="Yes"
}
---@return "Geometry"
function Geometry:GetClass() end
---@return "Geometry"
function Geometry:GetChildClass() end
---@return Geometry
function Geometry:Parent() end
---@param index integer
---@return Geometry
function Geometry:Ptr(index) end
---@return Geometry[]
function Geometry:Children() end
---@return Geometry?
function Geometry:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type", role: nil): string
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Geometry:Get(name, role) end
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: "GeometryDisplay", undo: Undo?): GeometryDisplay
---@overload fun(index: integer, class: "WiringObject", undo: Undo?): WiringObject
---@overload fun(index: integer, class: "Support", undo: Undo?): Support
---@overload fun(index: integer, class: "Structure", undo: Undo?): Structure
---@overload fun(index: integer, class: "Magnet", undo: Undo?): Magnet
---@overload fun(index: integer, class: "Laser", undo: Undo?): Laser
---@overload fun(index: integer, class: "Inventory", undo: Undo?): Inventory
---@overload fun(index: integer, class: "MediaServerMaster", undo: Undo?): MediaServerMaster
---@overload fun(index: integer, class: "MediaServerCamera", undo: Undo?): MediaServerCamera
---@overload fun(index: integer, class: "MediaServerLayer", undo: Undo?): MediaServerLayer
---@overload fun(index: integer, class: "FilterShaper", undo: Undo?): FilterShaper
---@overload fun(index: integer, class: "FilterBeam", undo: Undo?): FilterBeam
---@overload fun(index: integer, class: "FilterColor", undo: Undo?): FilterColor
---@overload fun(index: integer, class: "FilterGobo", undo: Undo?): FilterGobo
---@overload fun(index: integer, class: "Beam", undo: Undo?): Beam
---@overload fun(index: integer, class: "Axis", undo: Undo?): Axis
---@overload fun(index: integer, class: "GeometryReference", undo: Undo?): GeometryReference
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function Geometry:Create(index, class, undo) end
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: "GeometryDisplay", undo: Undo?, count: integer?): GeometryDisplay
---@overload fun(class: "WiringObject", undo: Undo?, count: integer?): WiringObject
---@overload fun(class: "Support", undo: Undo?, count: integer?): Support
---@overload fun(class: "Structure", undo: Undo?, count: integer?): Structure
---@overload fun(class: "Magnet", undo: Undo?, count: integer?): Magnet
---@overload fun(class: "Laser", undo: Undo?, count: integer?): Laser
---@overload fun(class: "Inventory", undo: Undo?, count: integer?): Inventory
---@overload fun(class: "MediaServerMaster", undo: Undo?, count: integer?): MediaServerMaster
---@overload fun(class: "MediaServerCamera", undo: Undo?, count: integer?): MediaServerCamera
---@overload fun(class: "MediaServerLayer", undo: Undo?, count: integer?): MediaServerLayer
---@overload fun(class: "FilterShaper", undo: Undo?, count: integer?): FilterShaper
---@overload fun(class: "FilterBeam", undo: Undo?, count: integer?): FilterBeam
---@overload fun(class: "FilterColor", undo: Undo?, count: integer?): FilterColor
---@overload fun(class: "FilterGobo", undo: Undo?, count: integer?): FilterGobo
---@overload fun(class: "Beam", undo: Undo?, count: integer?): Beam
---@overload fun(class: "Axis", undo: Undo?, count: integer?): Axis
---@overload fun(class: "GeometryReference", undo: Undo?, count: integer?): GeometryReference
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function Geometry:Append(class, undo, count) end
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: "GeometryDisplay", undo: Undo?): GeometryDisplay
---@overload fun(class: "WiringObject", undo: Undo?): WiringObject
---@overload fun(class: "Support", undo: Undo?): Support
---@overload fun(class: "Structure", undo: Undo?): Structure
---@overload fun(class: "Magnet", undo: Undo?): Magnet
---@overload fun(class: "Laser", undo: Undo?): Laser
---@overload fun(class: "Inventory", undo: Undo?): Inventory
---@overload fun(class: "MediaServerMaster", undo: Undo?): MediaServerMaster
---@overload fun(class: "MediaServerCamera", undo: Undo?): MediaServerCamera
---@overload fun(class: "MediaServerLayer", undo: Undo?): MediaServerLayer
---@overload fun(class: "FilterShaper", undo: Undo?): FilterShaper
---@overload fun(class: "FilterBeam", undo: Undo?): FilterBeam
---@overload fun(class: "FilterColor", undo: Undo?): FilterColor
---@overload fun(class: "FilterGobo", undo: Undo?): FilterGobo
---@overload fun(class: "Beam", undo: Undo?): Beam
---@overload fun(class: "Axis", undo: Undo?): Axis
---@overload fun(class: "GeometryReference", undo: Undo?): GeometryReference
---@overload fun(class: nil, undo: Undo?): Geometry
function Geometry:Acquire(class, undo) end
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: "GeometryDisplay", undo: Undo?): GeometryDisplay
---@overload fun(class: "WiringObject", undo: Undo?): WiringObject
---@overload fun(class: "Support", undo: Undo?): Support
---@overload fun(class: "Structure", undo: Undo?): Structure
---@overload fun(class: "Magnet", undo: Undo?): Magnet
---@overload fun(class: "Laser", undo: Undo?): Laser
---@overload fun(class: "Inventory", undo: Undo?): Inventory
---@overload fun(class: "MediaServerMaster", undo: Undo?): MediaServerMaster
---@overload fun(class: "MediaServerCamera", undo: Undo?): MediaServerCamera
---@overload fun(class: "MediaServerLayer", undo: Undo?): MediaServerLayer
---@overload fun(class: "FilterShaper", undo: Undo?): FilterShaper
---@overload fun(class: "FilterBeam", undo: Undo?): FilterBeam
---@overload fun(class: "FilterColor", undo: Undo?): FilterColor
---@overload fun(class: "FilterGobo", undo: Undo?): FilterGobo
---@overload fun(class: "Beam", undo: Undo?): Beam
---@overload fun(class: "Axis", undo: Undo?): Axis
---@overload fun(class: "GeometryReference", undo: Undo?): GeometryReference
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function Geometry:Aquire(class, undo) end
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: "GeometryDisplay", undo: Undo?, count: integer?): GeometryDisplay
---@overload fun(index: integer, class: "WiringObject", undo: Undo?, count: integer?): WiringObject
---@overload fun(index: integer, class: "Support", undo: Undo?, count: integer?): Support
---@overload fun(index: integer, class: "Structure", undo: Undo?, count: integer?): Structure
---@overload fun(index: integer, class: "Magnet", undo: Undo?, count: integer?): Magnet
---@overload fun(index: integer, class: "Laser", undo: Undo?, count: integer?): Laser
---@overload fun(index: integer, class: "Inventory", undo: Undo?, count: integer?): Inventory
---@overload fun(index: integer, class: "MediaServerMaster", undo: Undo?, count: integer?): MediaServerMaster
---@overload fun(index: integer, class: "MediaServerCamera", undo: Undo?, count: integer?): MediaServerCamera
---@overload fun(index: integer, class: "MediaServerLayer", undo: Undo?, count: integer?): MediaServerLayer
---@overload fun(index: integer, class: "FilterShaper", undo: Undo?, count: integer?): FilterShaper
---@overload fun(index: integer, class: "FilterBeam", undo: Undo?, count: integer?): FilterBeam
---@overload fun(index: integer, class: "FilterColor", undo: Undo?, count: integer?): FilterColor
---@overload fun(index: integer, class: "FilterGobo", undo: Undo?, count: integer?): FilterGobo
---@overload fun(index: integer, class: "Beam", undo: Undo?, count: integer?): Beam
---@overload fun(index: integer, class: "Axis", undo: Undo?, count: integer?): Axis
---@overload fun(index: integer, class: "GeometryReference", undo: Undo?, count: integer?): GeometryReference
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function Geometry:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Geometry"): Geometry
---@overload fun(name: string, class: "GeometryDisplay"): GeometryDisplay
---@overload fun(name: string, class: "WiringObject"): WiringObject
---@overload fun(name: string, class: "Support"): Support
---@overload fun(name: string, class: "Structure"): Structure
---@overload fun(name: string, class: "Magnet"): Magnet
---@overload fun(name: string, class: "Laser"): Laser
---@overload fun(name: string, class: "Inventory"): Inventory
---@overload fun(name: string, class: "MediaServerMaster"): MediaServerMaster
---@overload fun(name: string, class: "MediaServerCamera"): MediaServerCamera
---@overload fun(name: string, class: "MediaServerLayer"): MediaServerLayer
---@overload fun(name: string, class: "FilterShaper"): FilterShaper
---@overload fun(name: string, class: "FilterBeam"): FilterBeam
---@overload fun(name: string, class: "FilterColor"): FilterColor
---@overload fun(name: string, class: "FilterGobo"): FilterGobo
---@overload fun(name: string, class: "Beam"): Beam
---@overload fun(name: string, class: "Axis"): Axis
---@overload fun(name: string, class: "GeometryReference"): GeometryReference
---@overload fun(name: string, class: nil): Geometry
function Geometry:Find(name, class) end
---@overload fun(name: string, class: "Geometry"): Geometry
---@overload fun(name: string, class: "GeometryDisplay"): GeometryDisplay
---@overload fun(name: string, class: "WiringObject"): WiringObject
---@overload fun(name: string, class: "Support"): Support
---@overload fun(name: string, class: "Structure"): Structure
---@overload fun(name: string, class: "Magnet"): Magnet
---@overload fun(name: string, class: "Laser"): Laser
---@overload fun(name: string, class: "Inventory"): Inventory
---@overload fun(name: string, class: "MediaServerMaster"): MediaServerMaster
---@overload fun(name: string, class: "MediaServerCamera"): MediaServerCamera
---@overload fun(name: string, class: "MediaServerLayer"): MediaServerLayer
---@overload fun(name: string, class: "FilterShaper"): FilterShaper
---@overload fun(name: string, class: "FilterBeam"): FilterBeam
---@overload fun(name: string, class: "FilterColor"): FilterColor
---@overload fun(name: string, class: "FilterGobo"): FilterGobo
---@overload fun(name: string, class: "Beam"): Beam
---@overload fun(name: string, class: "Axis"): Axis
---@overload fun(name: string, class: "GeometryReference"): GeometryReference
---@overload fun(name: string, class: nil): Object
function Geometry:FindRecursive(name, class) end
