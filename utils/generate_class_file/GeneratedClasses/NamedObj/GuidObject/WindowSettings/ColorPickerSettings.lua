---@meta

---@class ColorPickerSettings: WindowSettings
---@field BrightnessOverdriveMode integer
---@field ColorMixMode ColorMixMode
---@field Mode ColorPickerWindowMode
---@field ColorWheelMode ColorWheelMode
---@field LastColorEncoderFunction ColorEncoderFunction
local ColorPickerSettings = {
    BrightnessOverdriveMode="0",
    ColorMixMode="Fixture Type",
    Mode="CIE",
    ColorWheelMode="Prefer
Mix Color"
}
---@return "ColorPickerSettings"
function ColorPickerSettings:GetClass() end
---@return "Object"
function ColorPickerSettings:GetChildClass() end
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
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "ShowTitleBar", role: nil): integer
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "RequestDefaultTitlebuttons", role: nil): integer
---@overload fun(name: "TitleButtonMask", role: nil): string
---@overload fun(name: "BrightnessOverdriveMode", role: nil): integer
---@overload fun(name: "ColorMixMode", role: nil): ColorMixMode
---@overload fun(name: "Mode", role: nil): ColorPickerWindowMode
---@overload fun(name: "ColorWheelMode", role: nil): ColorWheelMode
---@overload fun(name: "LastColorEncoderFunction", role: nil): ColorEncoderFunction
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"BrightnessOverdriveMode"|"ColorMixMode"|"Mode"|"ColorWheelMode"|"LastColorEncoderFunction", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ColorPickerSettings:Get(name, role) end
