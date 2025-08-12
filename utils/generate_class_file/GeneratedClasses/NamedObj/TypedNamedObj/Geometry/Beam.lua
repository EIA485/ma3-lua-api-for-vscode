---@meta

---@class Beam: Geometry A specialized geometry that represents the light emitter of a beam.
---@field Power
Consumption number
---@field Luminous
Intensity number
---@field Color
Temperature number
---@field Beam
Angle number
---@field Beam
Radius number
---@field Field
Angle number
---@field Lamp
Type integer
---@field Beam
Type integer
---@field RectangleRatio number
---@field ThrowRatio number
---@field MultiBeamBlur number
---@field ColorRenderingIndex integer
---@field IsMainBeam integer
---@field EmitterSpectrum Emitter
local Beam = {
    ["Power
Consumption"]="1000",
    ["Luminous
Intensity"]="10000",
    ["Color
Temperature"]="3000",
    ["Beam
Angle"]="25.0",
    ["Beam
Radius"]="0.05",
    ["Field
Angle"]="25.0",
    ["Lamp
Type"]="Discharge",
    ["Beam
Type"]="Wash",
    RectangleRatio="1.778",
    ThrowRatio="1.0",
    MultiBeamBlur="1.0",
    ColorRenderingIndex="100",
    IsMainBeam="No"
}
---@return "Beam"
function Beam:GetClass() end
---@return "Geometry"
function Beam:GetChildClass() end
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
---@overload fun(name: "Power
Consumption"|"Luminous
Intensity"|"Color
Temperature"|"Beam
Angle"|"Beam
Radius"|"Field
Angle", role: nil): number
---@overload fun(name: "Lamp
Type"|"Beam
Type", role: nil): integer
---@overload fun(name: "RectangleRatio"|"ThrowRatio"|"MultiBeamBlur", role: nil): number
---@overload fun(name: "ColorRenderingIndex"|"IsMainBeam", role: nil): integer
---@overload fun(name: "EmitterSpectrum", role: nil): Emitter
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Power
Consumption"|"Luminous
Intensity"|"Color
Temperature"|"Beam
Angle"|"Beam
Radius"|"Field
Angle"|"Lamp
Type"|"Beam
Type"|"RectangleRatio"|"ThrowRatio"|"MultiBeamBlur"|"ColorRenderingIndex"|"IsMainBeam"|"EmitterSpectrum", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Beam:Get(name, role) end
