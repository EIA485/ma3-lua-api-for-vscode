---@meta

---@class LayoutElementDefaultsCollect: Object
local LayoutElementDefaultsCollect = {}
---@return "LayoutElementDefaultsCollect"
function LayoutElementDefaultsCollect:GetClass() end
---@return "LayoutElementDefaults"
function LayoutElementDefaultsCollect:GetChildClass() end
---@generic T : LayoutElementDefaultsCollect
---@param class `T`
---@return boolean
function LayoutElementDefaultsCollect:IsClass(class) end
---@param index integer
---@return LayoutElementDefaults
function LayoutElementDefaultsCollect:Ptr(index) end
---@return LayoutElementDefaults[]
function LayoutElementDefaultsCollect:Children() end
---@return LayoutElementDefaults?
function LayoutElementDefaultsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): LayoutElementDefaults
function LayoutElementDefaultsCollect:Get(name, role) end
---@generic T : LayoutElementDefaults
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Create(index, class, undo) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Append(class, undo, count) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Acquire(class, undo) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
---@deprecated use "Acquire" instead
function LayoutElementDefaultsCollect:Aquire(class, undo) end
---@generic T : LayoutElementDefaults
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Insert(index, class, undo, count) end
---@generic T : LayoutElementDefaults
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutElementDefaults
function LayoutElementDefaultsCollect:Find(class, undo) end
---@overload fun(property_name: "Action", property_value: AssignmentButtonFunctions)
---@overload fun(property_name: "IndicatorBar", property_value: LayoutVisibility|boolean)
---@overload fun(property_name: "FullResolution", property_value: YesNo|boolean)
---@overload fun(property_name: "CustomTextAlignmentV", property_value: LayoutElementAlignmentV)
---@overload fun(property_name: "SelectionRelevance", property_value: LayoutElementSelectionRelevance)
---@overload fun(property_name: "CustomTextAlignmentH", property_value: AlignmentH)
---@overload fun(property_name: "ElementType", property_value: AssignType)
---@overload fun(property_name: "CustomTextAlignmentH", property_value: AlignmentH)
---@overload fun(property_name: "ElementType", property_value: AssignType)
---@overload fun(property_name: "Action", property_value: AssignmentButtonFunctions)
---@overload fun(property_name: "ObjectTextSize"|"CustomTextSize", property_value: FontSizes)
---@overload fun(property_name: "CustomTextAlignmentV", property_value: LayoutElementAlignmentV)
---@overload fun(property_name: "SelectionRelevance", property_value: LayoutElementSelectionRelevance)
---@overload fun(property_name: "IndicatorBar", property_value: LayoutVisibility|boolean)
---@overload fun(property_name: "Border"|"Bar"|"ObjectName"|"ID"|"Value", property_value: OnOff|boolean)
---@overload fun(property_name: "BorderColor"|"CustomTextColor", property_value: UColor)
---@overload fun(property_name: "FullResolution", property_value: YesNo|boolean)
---@overload fun(property_name: "Width"|"Height"|"BorderSize", property_value: integer)
function LayoutElementDefaultsCollect:ElementType(property_name, property_value) end