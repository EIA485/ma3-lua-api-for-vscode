---@meta

---@class TempStoreSettings: Object
---@field NewName string
---@field ScreenContentMask integer
---@field ScreenContentDisplay1 integer
---@field ScreenContentDisplay2 integer
---@field ScreenContentDisplay3 integer
---@field ScreenContentDisplay4 integer
---@field ScreenContentDisplay5 integer
---@field ScreenContentDisplay6 integer
---@field ScreenContentDisplay7 integer
---@field ImageStoreSource integer
---@field ImageDisplayIndex integer
---@field ImageNDIIndex integer
---@field ImageNDISource NDISource
---@field ImageResolution integer
---@field ChannelFilter ChannelFilterMode Channel Filter Mode for next store operation
---@field StoreLook integer
---@field StoreScreenshot integer
---@field StoreMode StoreMode Store Mode for next store operation
---@field StoreSource StoreSource Store Source for next store operation
---@field StoreEmbedded integer Store embedded option for presets
---@field StoreMatricks integer Store matricks option for presets/groups/recipes
---@field PresetInputFilter integer Store preset input filter option for presets
---@field UpdateInputFilter integer Update preset input filter option for presets
---@field KeepActivation integer Keep activation after store option
---@field CueOnly integer Store cue only option
---@field PresetMode integer
---@field UpdatePresetMode integer
---@field UpdateModePresets Update Update Mode for next update operation
---@field UpdateModeCues Update Update Mode for next update operation
---@field GridMergeMode integer Store grid merge option
---@field CopyMode StoreMode Copy Mode for next store operation
---@field CopyCueOnly integer Copy cue only option
---@field UpdateCueOnly integer Update cue only option
---@field CopyCueSrc integer Copy cue src option
---@field CopyCueDst integer Copy cue dst option
---@field CopyCueDstMode integer Copy cue dst mode option
---@field CopyTrackingShield integer Copy tracking shield option
---@field TrackingShield integer Store tracking shield option
---@field UITrackingShield TrackingShield Store tracking shield option
---@field UIUpdateTrackingShield TrackingShield Store tracking shield option
---@field CueOperationMode CueOperationMode
---@field DimmerCueOnly boolean
---@field UpdateCueOperationMode CueOperationMode
---@field UpdateDimmerCueOnly boolean
local TempStoreSettings = {
    ScreenContentMask="127",
    ScreenContentDisplay1="1",
    ScreenContentDisplay2="1",
    ScreenContentDisplay3="1",
    ScreenContentDisplay4="1",
    ScreenContentDisplay5="1",
    ScreenContentDisplay6="1",
    ScreenContentDisplay7="1",
    ImageStoreSource="ScreenShot",
    ImageDisplayIndex="1",
    ImageNDIIndex="0",
    ImageResolution="64",
    ChannelFilter="Active",
    StoreLook="0",
    StoreScreenshot="0",
    StoreMode="Active",
    StoreSource="Programmer",
    StoreEmbedded="0",
    StoreMatricks="1",
    PresetInputFilter="1",
    UpdateInputFilter="1",
    KeepActivation="0",
    CueOnly="No",
    PresetMode="Default",
    UpdatePresetMode="Default",
    GridMergeMode="Append X",
    CopyMode="Ask",
    CopyCueOnly="Off",
    UpdateCueOnly="No",
    CopyCueSrc="Content",
    CopyCueDst="AllowTracked",
    CopyCueDstMode="Overwrite",
    CopyTrackingShield="Off",
    TrackingShield="Off",
    UITrackingShield="Off",
    UIUpdateTrackingShield="Off",
    CueOperationMode="Cue Only",
    DimmerCueOnly="No",
    UpdateCueOperationMode="Cue Only",
    UpdateDimmerCueOnly="No"
}
---@return "TempStoreSettings"
function TempStoreSettings:GetClass() end
---@return "Object"
function TempStoreSettings:GetChildClass() end
---@return Cmdline
function TempStoreSettings:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "NewName", role: nil): string
---@overload fun(name: "ScreenContentMask"|"ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7"|"ImageStoreSource"|"ImageDisplayIndex"|"ImageNDIIndex", role: nil): integer
---@overload fun(name: "ImageNDISource", role: nil): NDISource
---@overload fun(name: "ImageResolution", role: nil): integer
---@overload fun(name: "ChannelFilter", role: nil): ChannelFilterMode
---@overload fun(name: "StoreLook"|"StoreScreenshot", role: nil): integer
---@overload fun(name: "StoreMode", role: nil): StoreMode
---@overload fun(name: "StoreSource", role: nil): StoreSource
---@overload fun(name: "StoreEmbedded"|"StoreMatricks"|"PresetInputFilter"|"UpdateInputFilter"|"KeepActivation"|"CueOnly"|"PresetMode"|"UpdatePresetMode", role: nil): integer
---@overload fun(name: "UpdateModePresets"|"UpdateModeCues", role: nil): Update
---@overload fun(name: "GridMergeMode", role: nil): integer
---@overload fun(name: "CopyMode", role: nil): StoreMode
---@overload fun(name: "CopyCueOnly"|"UpdateCueOnly"|"CopyCueSrc"|"CopyCueDst"|"CopyCueDstMode"|"CopyTrackingShield"|"TrackingShield", role: nil): integer
---@overload fun(name: "UITrackingShield"|"UIUpdateTrackingShield", role: nil): TrackingShield
---@overload fun(name: "CueOperationMode", role: nil): CueOperationMode
---@overload fun(name: "DimmerCueOnly", role: nil): boolean
---@overload fun(name: "UpdateCueOperationMode", role: nil): CueOperationMode
---@overload fun(name: "UpdateDimmerCueOnly", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"NewName"|"ScreenContentMask"|"ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7"|"ImageStoreSource"|"ImageDisplayIndex"|"ImageNDIIndex"|"ImageNDISource"|"ImageResolution"|"ChannelFilter"|"StoreLook"|"StoreScreenshot"|"StoreMode"|"StoreSource"|"StoreEmbedded"|"StoreMatricks"|"PresetInputFilter"|"UpdateInputFilter"|"KeepActivation"|"CueOnly"|"PresetMode"|"UpdatePresetMode"|"UpdateModePresets"|"UpdateModeCues"|"GridMergeMode"|"CopyMode"|"CopyCueOnly"|"UpdateCueOnly"|"CopyCueSrc"|"CopyCueDst"|"CopyCueDstMode"|"CopyTrackingShield"|"TrackingShield"|"UITrackingShield"|"UIUpdateTrackingShield"|"CueOperationMode"|"DimmerCueOnly"|"UpdateCueOperationMode"|"UpdateDimmerCueOnly", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function TempStoreSettings:Get(name, role) end
