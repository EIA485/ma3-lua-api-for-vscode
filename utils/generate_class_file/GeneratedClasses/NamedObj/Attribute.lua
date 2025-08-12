---@meta

---@class Attribute: NamedObj A group of subattributes which are mutually exclusive activation wise ( eg. GoboRot and GoboPos )
---@field Pretty string
---@field Main
Attribute Attribute
---@field Activation
Group ActivationGroup
---@field Feature Feature
---@field Special integer
---@field Special
Index integer
---@field Physical
Unit PhysicalUnit
---@field Geometry
Type GeometryType
---@field Color Colors.RGB<float>
---@field Intensity number
---@field Natural
Readout ValueReadoutMode
---@field Encoder
Resolution integer
---@field Log
Channels integer
---@field Channel
Functions integer
---@field Hide integer
---@field AttributeIndex integer
---@field AttributeIndexOld integer
local Attribute = {
    Special="None",
    ["Special
Index"]="None",
    ["Physical
Unit"]="None",
    ["Geometry
Type"]="None",
    Color="0.000000,0.000000,0.000000,1.000000",
    Intensity="1",
    ["Natural
Readout"]="None",
    ["Encoder
Resolution"]="Normal"
}
---@return "Attribute"
function Attribute:GetClass() end
---@return "Object"
function Attribute:GetChildClass() end
---@return Attributes
function Attribute:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Pretty", role: nil): string
---@overload fun(name: "Main
Attribute", role: nil): Attribute
---@overload fun(name: "Activation
Group", role: nil): ActivationGroup
---@overload fun(name: "Feature", role: nil): Feature
---@overload fun(name: "Special"|"Special
Index", role: nil): integer
---@overload fun(name: "Physical
Unit", role: nil): PhysicalUnit
---@overload fun(name: "Geometry
Type", role: nil): GeometryType
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "Intensity", role: nil): number
---@overload fun(name: "Natural
Readout", role: nil): ValueReadoutMode
---@overload fun(name: "Encoder
Resolution"|"Log
Channels"|"Channel
Functions"|"Hide"|"AttributeIndex"|"AttributeIndexOld", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Pretty"|"Main
Attribute"|"Activation
Group"|"Feature"|"Special"|"Special
Index"|"Physical
Unit"|"Geometry
Type"|"Color"|"Intensity"|"Natural
Readout"|"Encoder
Resolution"|"Log
Channels"|"Channel
Functions"|"Hide"|"AttributeIndex"|"AttributeIndexOld", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Attribute:Get(name, role) end
