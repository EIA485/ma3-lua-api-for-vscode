---@meta

---@class BitmapConfig: GeneratorConfiguration
---@field Content Image
---@field Width integer
---@field Height integer
---@field Interpolate YesNo|boolean
---@field Alpha YesNo|boolean
---@field ContentMode ClipMode
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
---@generic T : BitmapConfig
---@param class `T`
---@return boolean
function BitmapConfig:IsClass(class) end
---@return BitmapConfigs
function BitmapConfig:Parent() end
---@return 29
function BitmapConfig:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "Content"
---@overload fun(idx: 16): "Width"
---@overload fun(idx: 17): "Height"
---@overload fun(idx: 18): "Interpolate"
---@overload fun(idx: 19): "Alpha"
---@overload fun(idx: 20): "ContentMode"
---@overload fun(idx: 21): "ControlX"
---@overload fun(idx: 22): "ControlY"
---@overload fun(idx: 23): "ControlZoom"
---@overload fun(idx: 24): "ControlAspect"
---@overload fun(idx: 25): "ControlRotate"
---@overload fun(idx: 26): "ColorR"
---@overload fun(idx: 27): "ColorG"
---@overload fun(idx: 28): "ColorB"
function BitmapConfig:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|18|19): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|17|21|22|23|24|25|26|27|28): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: ClipMode, ReadOnly: False, ImportIgnore: False}
function BitmapConfig:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|18|19|20): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Handle"
---@overload fun(idx: 16|17|21|22|23|24|25|26|27|28): "Int32"
function BitmapConfig:PropertyType(idx) end
---@overload fun(name: "ContentMode", role: nil): ClipMode
---@overload fun(name: "Content", role: nil): Image
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Interpolate"|"Alpha", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Width"|"Height"|"ControlX"|"ControlY"|"ControlZoom"|"ControlAspect"|"ControlRotate"|"ColorR"|"ColorG"|"ColorB", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Content"|"Width"|"Height"|"Interpolate"|"Alpha"|"ContentMode"|"ControlX"|"ControlY"|"ControlZoom"|"ControlAspect"|"ControlRotate"|"ColorR"|"ColorG"|"ColorB", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BitmapConfig:Get(name, role) end
---@overload fun(property_name: "ContentMode", property_value: ClipMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Content", property_value: Image, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Interpolate"|"Alpha", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Width"|"Height"|"ControlX"|"ControlY"|"ControlZoom"|"ControlAspect"|"ControlRotate"|"ColorR"|"ColorG"|"ColorB", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function BitmapConfig:Set(property_name, property_value, override_change_level) end