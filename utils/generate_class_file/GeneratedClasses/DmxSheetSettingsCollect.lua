---@meta

---@class DmxSheetSettingsCollect: Object
local DmxSheetSettingsCollect = {}
---@return "DmxSheetSettingsCollect"
function DmxSheetSettingsCollect:GetClass() end
---@return "DMXSheetSettings"
function DmxSheetSettingsCollect:GetChildClass() end
---@generic T : DmxSheetSettingsCollect
---@param class `T`
---@return boolean
function DmxSheetSettingsCollect:IsClass(class) end
---@param index integer
---@return DMXSheetSettings
function DmxSheetSettingsCollect:Ptr(index) end
---@return DMXSheetSettings[]
function DmxSheetSettingsCollect:Children() end
---@return DMXSheetSettings?
function DmxSheetSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXSheetSettings
function DmxSheetSettingsCollect:Get(name, role) end
---@generic T : DMXSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Create(index, class, undo) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXSheetSettings
function DmxSheetSettingsCollect:Append(class, undo, count) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Acquire(class, undo) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
---@deprecated use "Acquire" instead
function DmxSheetSettingsCollect:Aquire(class, undo) end
---@generic T : DMXSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXSheetSettings
function DmxSheetSettingsCollect:Insert(index, class, undo, count) end
---@generic T : DMXSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXSheetSettings
function DmxSheetSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "ViewMode", property_value: DmxSheetSettingsViewMode)
---@overload fun(property_name: "Address", property_value: DMXPropertyAddress)
---@overload fun(property_name: "AddressMode", property_value: DmxSheetSettingsAddressMode)
---@overload fun(property_name: "Levelbar", property_value: DmxSheetSettingsLevelbar)
---@overload fun(property_name: "Readout", property_value: DMXValueReadoutMode)
---@overload fun(property_name: "Universe", property_value: DmxSheetSettingsSelected)
---@overload fun(property_name: "Address", property_value: DMXPropertyAddress)
---@overload fun(property_name: "Readout", property_value: DMXValueReadoutMode)
---@overload fun(property_name: "AddressMode", property_value: DmxSheetSettingsAddressMode)
---@overload fun(property_name: "Levelbar", property_value: DmxSheetSettingsLevelbar)
---@overload fun(property_name: "Universe", property_value: DmxSheetSettingsSelected)
---@overload fun(property_name: "ViewMode", property_value: DmxSheetSettingsViewMode)
---@overload fun(property_name: "OnlySelection"|"TestBar"|"Attribute"|"Id"|"SkipPatched"|"Value"|"AutoColumns", property_value: YesNo|boolean)
---@overload fun(property_name: "ColumnsCount"|"AutoColumnsWidth", property_value: integer)
function DmxSheetSettingsCollect:SetChildren(property_name, property_value) end