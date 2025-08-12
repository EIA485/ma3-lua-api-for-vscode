---@meta

---@class CommandWingBarSettings: WindowSettings
---@field ShowGrandMaster integer
---@field ShowCustomMasters integer
---@field DisplayModeCM integer
---@field DisplayModeExec integer
---@field ShowUserSettings integer
---@field ShowEncoderBank integer
---@field ShowLayerToolbar integer
---@field FadeEncoder integer
---@field ShowTimeButtons integer
---@field ShowStepButtons integer
---@field ShowEncoderPageSelector integer
---@field ShowToolPopups integer
---@field ShowFunctionSelector integer
---@field ShowEncoderLabel integer
---@field WingID WingID
---@field Page integer
local CommandWingBarSettings = {
    ShowGrandMaster="Yes",
    ShowCustomMasters="Yes",
    DisplayModeCM="Yes",
    DisplayModeExec="Yes",
    ShowUserSettings="Yes",
    ShowEncoderBank="Yes",
    ShowLayerToolbar="Yes",
    FadeEncoder="Yes",
    ShowTimeButtons="Yes",
    ShowStepButtons="Yes",
    ShowEncoderPageSelector="Yes",
    ShowToolPopups="Yes",
    ShowFunctionSelector="Yes",
    ShowEncoderLabel="Yes",
    WingID="Wing1"
}
---@return "CommandWingBarSettings"
function CommandWingBarSettings:GetClass() end
---@return "Object"
function CommandWingBarSettings:GetChildClass() end
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
---@overload fun(name: "ShowGrandMaster"|"ShowCustomMasters"|"DisplayModeCM"|"DisplayModeExec"|"ShowUserSettings"|"ShowEncoderBank"|"ShowLayerToolbar"|"FadeEncoder"|"ShowTimeButtons"|"ShowStepButtons"|"ShowEncoderPageSelector"|"ShowToolPopups"|"ShowFunctionSelector"|"ShowEncoderLabel", role: nil): integer
---@overload fun(name: "WingID", role: nil): WingID
---@overload fun(name: "Page", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowGrandMaster"|"ShowCustomMasters"|"DisplayModeCM"|"DisplayModeExec"|"ShowUserSettings"|"ShowEncoderBank"|"ShowLayerToolbar"|"FadeEncoder"|"ShowTimeButtons"|"ShowStepButtons"|"ShowEncoderPageSelector"|"ShowToolPopups"|"ShowFunctionSelector"|"ShowEncoderLabel"|"WingID"|"Page", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CommandWingBarSettings:Get(name, role) end
