---@meta

---@class WindowPhaserEditorSettingsCollect: Object
local WindowPhaserEditorSettingsCollect = {}
---@return "WindowPhaserEditorSettingsCollect"
function WindowPhaserEditorSettingsCollect:GetClass() end
---@return "WindowPhaserEditorSettings"
function WindowPhaserEditorSettingsCollect:GetChildClass() end
---@generic T : WindowPhaserEditorSettingsCollect
---@param class `T`
---@return boolean
function WindowPhaserEditorSettingsCollect:IsClass(class) end
---@param index integer
---@return WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Ptr(index) end
---@return WindowPhaserEditorSettings[]
function WindowPhaserEditorSettingsCollect:Children() end
---@return WindowPhaserEditorSettings?
function WindowPhaserEditorSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Get(name, role) end
---@generic T : WindowPhaserEditorSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Create(index, class, undo) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Append(class, undo, count) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Acquire(class, undo) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
---@deprecated use "Acquire" instead
function WindowPhaserEditorSettingsCollect:Aquire(class, undo) end
---@generic T : WindowPhaserEditorSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Insert(index, class, undo, count) end
---@generic T : WindowPhaserEditorSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowPhaserEditorSettings
function WindowPhaserEditorSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "LineHeight", property_value: PhaserLineHeight)
---@overload fun(property_name: "AbsRelMode", property_value: PhaserAbsRelMode)
---@overload fun(property_name: "ViewMode", property_value: PhaserViewMode)
---@overload fun(property_name: "Readout", property_value: ValueReadoutModeAuto)
---@overload fun(property_name: "Mode1D", property_value: PhaserMode1D)
---@overload fun(property_name: "Speed", property_value: SpeedReadoutModeAuto)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "EditTools", property_value: PhaserEditTool)
---@overload fun(property_name: "Attributes", property_value: AttributeMode)
---@overload fun(property_name: "EncoderBar", property_value: PhaserBars)
---@overload fun(property_name: "ColorMode", property_value: ColorDisplayModeAuto)
---@overload fun(property_name: "Attributes", property_value: AttributeMode)
---@overload fun(property_name: "ColorMode", property_value: ColorDisplayModeAuto)
---@overload fun(property_name: "AbsRelMode", property_value: PhaserAbsRelMode)
---@overload fun(property_name: "EncoderBar", property_value: PhaserBars)
---@overload fun(property_name: "EditTools", property_value: PhaserEditTool)
---@overload fun(property_name: "LineHeight", property_value: PhaserLineHeight)
---@overload fun(property_name: "Mode1D", property_value: PhaserMode1D)
---@overload fun(property_name: "ViewMode", property_value: PhaserViewMode)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "Speed", property_value: SpeedReadoutModeAuto)
---@overload fun(property_name: "Readout", property_value: ValueReadoutModeAuto)
---@overload fun(property_name: "Relative"|"Absolute"|"StepBar"|"ShowBeams"|"LayerSheet"|"AttributeSheet"|"ShowEmptyLines"|"LayerBar", property_value: YesNo|boolean)
function WindowPhaserEditorSettingsCollect:SetChildren(property_name, property_value) end