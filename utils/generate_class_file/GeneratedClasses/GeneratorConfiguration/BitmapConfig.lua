---@meta

---@class BitmapConfig: GeneratorConfiguration
---@field Content Image
---@field Width integer
---@field Height integer
---@field Interpolate integer
---@field Alpha integer
---@field Content
Mode integer
---@field ControlX integer
---@field ControlY integer
---@field ControlZoom integer
---@field ControlAspect integer
---@field ControlRotate integer
---@field ColorR integer
---@field ColorG integer
---@field ColorB integer
local BitmapConfig = {
    Width="64",
    Height="64",
    Interpolate="No",
    Alpha="No",
    ["Content
Mode"]="None",
    ControlX="0",
    ControlY="0",
    ControlZoom="50.0",
    ControlAspect="1.0",
    ControlRotate="0",
    ColorR="100.0",
    ColorG="100.0",
    ColorB="100.0"
}
---@return "BitmapConfig"
function BitmapConfig:GetClass() end
---@return "Object"
function BitmapConfig:GetChildClass() end
---@return BitmapConfigs
function BitmapConfig:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Content", role: nil): Image
---@overload fun(name: "Width"|"Height"|"Interpolate"|"Alpha"|"Content
Mode"|"ControlX"|"ControlY"|"ControlZoom"|"ControlAspect"|"ControlRotate"|"ColorR"|"ColorG"|"ColorB", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Content"|"Width"|"Height"|"Interpolate"|"Alpha"|"Content
Mode"|"ControlX"|"ControlY"|"ControlZoom"|"ControlAspect"|"ControlRotate"|"ColorR"|"ColorG"|"ColorB", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BitmapConfig:Get(name, role) end
