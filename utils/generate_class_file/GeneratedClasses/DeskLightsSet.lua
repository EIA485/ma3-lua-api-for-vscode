---@meta

---@class DeskLightsSet: Object
---@field Master integer
---@field LedEncoder integer
---@field LedFader integer
---@field LedExec integer
---@field LedKeyboard integer
---@field LedOther integer
---@field ScreenBig integer
---@field ScreenLetter integer
---@field ScreenSmall integer
---@field ScreenExternal integer
---@field MasterAddress DMXPropertyAddress
---@field LedEncoderAddress DMXPropertyAddress
---@field LedFaderAddress DMXPropertyAddress
---@field LedExecAddress DMXPropertyAddress
---@field LedKeyboardAddress DMXPropertyAddress
---@field LedOtherAddress DMXPropertyAddress
---@field ScreenBigAddress DMXPropertyAddress
---@field ScreenLetterAddress DMXPropertyAddress
---@field ScreenSmallAddress DMXPropertyAddress
---@field ScreenExternalAddress DMXPropertyAddress
---@field DarkMode integer
local DeskLightsSet = {
    Master="100",
    LedEncoder="100",
    LedFader="100",
    LedExec="100",
    LedKeyboard="100",
    LedOther="100",
    ScreenBig="100",
    ScreenLetter="100",
    ScreenSmall="100",
    ScreenExternal="100",
    DarkMode="0"
}
---@return "DeskLightsSet"
function DeskLightsSet:GetClass() end
---@return "Object"
function DeskLightsSet:GetChildClass() end
---@return DeskLightsCollect
function DeskLightsSet:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Master"|"LedEncoder"|"LedFader"|"LedExec"|"LedKeyboard"|"LedOther"|"ScreenBig"|"ScreenLetter"|"ScreenSmall"|"ScreenExternal", role: nil): integer
---@overload fun(name: "MasterAddress"|"LedEncoderAddress"|"LedFaderAddress"|"LedExecAddress"|"LedKeyboardAddress"|"LedOtherAddress"|"ScreenBigAddress"|"ScreenLetterAddress"|"ScreenSmallAddress"|"ScreenExternalAddress", role: nil): DMXPropertyAddress
---@overload fun(name: "DarkMode", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Master"|"LedEncoder"|"LedFader"|"LedExec"|"LedKeyboard"|"LedOther"|"ScreenBig"|"ScreenLetter"|"ScreenSmall"|"ScreenExternal"|"MasterAddress"|"LedEncoderAddress"|"LedFaderAddress"|"LedExecAddress"|"LedKeyboardAddress"|"LedOtherAddress"|"ScreenBigAddress"|"ScreenLetterAddress"|"ScreenSmallAddress"|"ScreenExternalAddress"|"DarkMode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DeskLightsSet:Get(name, role) end
