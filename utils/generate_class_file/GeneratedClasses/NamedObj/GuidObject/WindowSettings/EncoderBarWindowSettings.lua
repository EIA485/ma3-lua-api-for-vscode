---@meta

---@class EncoderBarWindowSettings: WindowSettings
---@field ShowGrandMaster integer
---@field FadeEncoder integer
---@field ShowFunctionSelector integer
---@field ShowEncoderLabel integer
---@field ShowUserSettings integer
---@field ShowToolPopups integer
---@field ShowEncoderBank integer
---@field ShowLayerToolbar integer
---@field ShowScreenEncoder integer
---@field ShowTimeButtons integer
---@field ShowStepButtons integer
---@field ShowEncoderPageSelector integer
local EncoderBarWindowSettings = {
    ShowGrandMaster="Yes",
    FadeEncoder="Yes",
    ShowFunctionSelector="Yes",
    ShowEncoderLabel="Yes",
    ShowUserSettings="Yes",
    ShowToolPopups="Yes",
    ShowEncoderBank="Yes",
    ShowLayerToolbar="Yes",
    ShowScreenEncoder="Yes",
    ShowTimeButtons="Yes",
    ShowStepButtons="Yes",
    ShowEncoderPageSelector="Yes"
}
---@return "EncoderBarWindowSettings"
function EncoderBarWindowSettings:GetClass() end
---@return "Object"
function EncoderBarWindowSettings:GetChildClass() end
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
---@overload fun(name: "ShowGrandMaster"|"FadeEncoder"|"ShowFunctionSelector"|"ShowEncoderLabel"|"ShowUserSettings"|"ShowToolPopups"|"ShowEncoderBank"|"ShowLayerToolbar"|"ShowScreenEncoder"|"ShowTimeButtons"|"ShowStepButtons"|"ShowEncoderPageSelector", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowGrandMaster"|"FadeEncoder"|"ShowFunctionSelector"|"ShowEncoderLabel"|"ShowUserSettings"|"ShowToolPopups"|"ShowEncoderBank"|"ShowLayerToolbar"|"ShowScreenEncoder"|"ShowTimeButtons"|"ShowStepButtons"|"ShowEncoderPageSelector", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function EncoderBarWindowSettings:Get(name, role) end
