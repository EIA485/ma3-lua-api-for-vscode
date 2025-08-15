---@meta

---@class FixtureSheetSettingsCollect: Object
local FixtureSheetSettingsCollect = {}
---@return "FixtureSheetSettingsCollect"
function FixtureSheetSettingsCollect:GetClass() end
---@return "FixtureSheetSettings"
function FixtureSheetSettingsCollect:GetChildClass() end
---@generic T : FixtureSheetSettingsCollect
---@param class `T`
---@return boolean
function FixtureSheetSettingsCollect:IsClass(class) end
---@param index integer
---@return FixtureSheetSettings
function FixtureSheetSettingsCollect:Ptr(index) end
---@return FixtureSheetSettings[]
function FixtureSheetSettingsCollect:Children() end
---@return FixtureSheetSettings?
function FixtureSheetSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureSheetSettings
function FixtureSheetSettingsCollect:Get(name, role) end
---@generic T : FixtureSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Create(index, class, undo) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Append(class, undo, count) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Acquire(class, undo) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
---@deprecated use "Acquire" instead
function FixtureSheetSettingsCollect:Aquire(class, undo) end
---@generic T : FixtureSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Insert(index, class, undo, count) end
---@generic T : FixtureSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureSheetSettings
function FixtureSheetSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "ChannelSetReadout", property_value: ChannelSetReadoutMode)
---@overload fun(property_name: "Filter", property_value: Object)
---@overload fun(property_name: "ColorMode", property_value: ColorDisplayModeAuto)
---@overload fun(property_name: "FixtureAppearance", property_value: FixtureAppearanceMode)
---@overload fun(property_name: "FixtureGraphic", property_value: FixtureGraphicMode)
---@overload fun(property_name: "Layer", property_value: ProgLayerAuto)
---@overload fun(property_name: "Readout", property_value: ValueReadoutModeAuto)
---@overload fun(property_name: "FixtureGraphicSource", property_value: FixturGraphicSource)
---@overload fun(property_name: "Speed", property_value: SpeedReadoutModeAuto)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "SheetMode", property_value: SheetMode)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "ChannelSetReadout", property_value: ChannelSetReadoutMode)
---@overload fun(property_name: "ColorMode", property_value: ColorDisplayModeAuto)
---@overload fun(property_name: "FixtureGraphicSource", property_value: FixturGraphicSource)
---@overload fun(property_name: "FixtureAppearance", property_value: FixtureAppearanceMode)
---@overload fun(property_name: "FixtureGraphic", property_value: FixtureGraphicMode)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "Filter", property_value: Object)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "Layer", property_value: ProgLayerAuto)
---@overload fun(property_name: "SheetMode", property_value: SheetMode)
---@overload fun(property_name: "Speed", property_value: SpeedReadoutModeAuto)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "Readout", property_value: ValueReadoutModeAuto)
---@overload fun(property_name: "ShowFilterToolbar"|"ShowLayerToolbar"|"ProgOnly"|"FeatureGraphic"|"FilterSelection"|"FixtureSort"|"FeatureSort"|"ShowNameField"|"ShowIDType"|"HideSubfixtures", property_value: YesNo|boolean)
function FixtureSheetSettingsCollect:FrameReadout(property_name, property_value) end