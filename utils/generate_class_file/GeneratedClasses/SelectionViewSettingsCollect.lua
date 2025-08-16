---@meta

---@class SelectionViewSettingsCollect: Object
local SelectionViewSettingsCollect = {}
---@return "SelectionViewSettingsCollect"
function SelectionViewSettingsCollect:GetClass() end
---@return "SelectionViewSettings"
function SelectionViewSettingsCollect:GetChildClass() end
---@generic T : SelectionViewSettingsCollect
---@param class `T`
---@return boolean
function SelectionViewSettingsCollect:IsClass(class) end
---@param index integer
---@return SelectionViewSettings
function SelectionViewSettingsCollect:Ptr(index) end
---@return SelectionViewSettings[]
function SelectionViewSettingsCollect:Children() end
---@return SelectionViewSettings?
function SelectionViewSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SelectionViewSettings
function SelectionViewSettingsCollect:Get(name, role) end
---@generic T : SelectionViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SelectionViewSettings
function SelectionViewSettingsCollect:Create(index, class, undo) end
---@generic T : SelectionViewSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SelectionViewSettings
function SelectionViewSettingsCollect:Append(class, undo, count) end
---@generic T : SelectionViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SelectionViewSettings
function SelectionViewSettingsCollect:Acquire(class, undo) end
---@generic T : SelectionViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SelectionViewSettings
---@deprecated use "Acquire" instead
function SelectionViewSettingsCollect:Aquire(class, undo) end
---@generic T : SelectionViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SelectionViewSettings
function SelectionViewSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SelectionViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SelectionViewSettings
function SelectionViewSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "FontSize", property_value: SelectionViewFontSize)
---@overload fun(property_name: "FontSize", property_value: SelectionViewFontSize)
---@overload fun(property_name: "CenterlineY"|"AlignBar"|"AutoScroll"|"GridLines"|"ToolBar"|"MAtricksTransformation"|"CenterlineX", property_value: YesNo|boolean)
function SelectionViewSettingsCollect:SetChildren(property_name, property_value) end