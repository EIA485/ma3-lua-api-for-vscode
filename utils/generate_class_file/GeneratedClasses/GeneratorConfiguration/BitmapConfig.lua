---@meta

---@class BitmapConfig: GeneratorConfiguration
---@field Content Image
---@field Width integer
---@field Height integer
---@field Interpolate integer
---@field Alpha integer
---@field ContentMode integer
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
    ContentMode="None",
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
---@overload fun(name: "Content", role: nil): Image
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Width"|"Height"|"Interpolate"|"Alpha"|"ContentMode"|"ControlX"|"ControlY"|"ControlZoom"|"ControlAspect"|"ControlRotate"|"ColorR"|"ColorG"|"ColorB"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Content"|"Width"|"Height"|"Interpolate"|"Alpha"|"ContentMode"|"ControlX"|"ControlY"|"ControlZoom"|"ControlAspect"|"ControlRotate"|"ColorR"|"ColorG"|"ColorB"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BitmapConfig:Get(name, role) end