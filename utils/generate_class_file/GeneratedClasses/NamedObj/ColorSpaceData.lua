---@meta

---@class ColorSpaceData: NamedObj
---@field ColorRed Colors.RGB<float>
---@field ColorGreen Colors.RGB<float>
---@field ColorBlue Colors.RGB<float>
---@field ColorWhitePoint Colors.RGB<float>
---@field Mode ColorSpaceMode
local ColorSpaceData = {
    ColorRed="1,0,0,1",
    ColorGreen="0,1,0,1",
    ColorBlue="0,0,1,1",
    ColorWhitePoint="1,1,1,1",
    Mode="sRGB"
}
---@return "ColorSpaceData"
function ColorSpaceData:GetClass() end
---@return "Object"
function ColorSpaceData:GetChildClass() end
---@return ColorSpaceCollect
function ColorSpaceData:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ColorRed"|"ColorGreen"|"ColorBlue"|"ColorWhitePoint", role: nil): Colors.RGB<float>
---@overload fun(name: "Mode", role: nil): ColorSpaceMode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ColorRed"|"ColorGreen"|"ColorBlue"|"ColorWhitePoint"|"Mode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ColorSpaceData:Get(name, role) end
