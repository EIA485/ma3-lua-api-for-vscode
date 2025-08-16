---@meta

---@class LayoutViewSettingsCollect: Object
local LayoutViewSettingsCollect = {}
---@return "LayoutViewSettingsCollect"
function LayoutViewSettingsCollect:GetClass() end
---@return "LayoutViewSettings"
function LayoutViewSettingsCollect:GetChildClass() end
---@generic T : LayoutViewSettingsCollect
---@param class `T`
---@return boolean
function LayoutViewSettingsCollect:IsClass(class) end
---@param index integer
---@return LayoutViewSettings
function LayoutViewSettingsCollect:Ptr(index) end
---@return LayoutViewSettings[]
function LayoutViewSettingsCollect:Children() end
---@return LayoutViewSettings?
function LayoutViewSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): LayoutViewSettings
function LayoutViewSettingsCollect:Get(name, role) end
---@generic T : LayoutViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Create(index, class, undo) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutViewSettings
function LayoutViewSettingsCollect:Append(class, undo, count) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Acquire(class, undo) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
---@deprecated use "Acquire" instead
function LayoutViewSettingsCollect:Aquire(class, undo) end
---@generic T : LayoutViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutViewSettings
function LayoutViewSettingsCollect:Insert(index, class, undo, count) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "GridStyle", property_value: LayoutGridStyle)
---@overload fun(property_name: "CanvasFitMode", property_value: LayoutStretch)
---@overload fun(property_name: "Tool", property_value: LayoutTool)
---@overload fun(property_name: "LassoFilter", property_value: LayoutLassoSelectionFilter)
---@overload fun(property_name: "LayoutOutputSelection", property_value: LayoutOutputSelection)
---@overload fun(property_name: "GridColor", property_value: UColor)
---@overload fun(property_name: "Filter", property_value: Filter)
---@overload fun(property_name: "SelectionMode", property_value: SelectionModeLayout)
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "Layout", property_value: Layout)
---@overload fun(property_name: "FitType", property_value: LayoutFitType)
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "Filter", property_value: Filter)
---@overload fun(property_name: "Layout", property_value: Layout)
---@overload fun(property_name: "FitType", property_value: LayoutFitType)
---@overload fun(property_name: "GridStyle", property_value: LayoutGridStyle)
---@overload fun(property_name: "LassoFilter", property_value: LayoutLassoSelectionFilter)
---@overload fun(property_name: "LayoutOutputSelection", property_value: LayoutOutputSelection)
---@overload fun(property_name: "CanvasFitMode", property_value: LayoutStretch)
---@overload fun(property_name: "Tool", property_value: LayoutTool)
---@overload fun(property_name: "ScrollH"|"ScrollV", property_value: ScrollType)
---@overload fun(property_name: "SelectionMode", property_value: SelectionModeLayout)
---@overload fun(property_name: "GridColor", property_value: UColor)
---@overload fun(property_name: "SnaptoGrid"|"AutoFit"|"Setup"|"RightClickToEdit"|"ShowSelection", property_value: YesNo|boolean)
---@overload fun(property_name: "VisibleGrid"|"SnapGrid"|"PaddingBottom"|"PaddingLeft"|"PaddingRight"|"PaddingTop", property_value: integer)
---@overload fun(property_name: "Scale"|"Aspect", property_value: number)
function LayoutViewSettingsCollect:SetChildren(property_name, property_value) end