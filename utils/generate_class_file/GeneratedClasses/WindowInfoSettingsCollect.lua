---@meta

---@class WindowInfoSettingsCollect: Object
local WindowInfoSettingsCollect = {}
---@return "WindowInfoSettingsCollect"
function WindowInfoSettingsCollect:GetClass() end
---@return "WindowInfoSettings"
function WindowInfoSettingsCollect:GetChildClass() end
---@generic T : WindowInfoSettingsCollect
---@param class `T`
---@return boolean
function WindowInfoSettingsCollect:IsClass(class) end
---@param index integer
---@return WindowInfoSettings
function WindowInfoSettingsCollect:Ptr(index) end
---@return WindowInfoSettings[]
function WindowInfoSettingsCollect:Children() end
---@return WindowInfoSettings?
function WindowInfoSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): WindowInfoSettings
function WindowInfoSettingsCollect:Get(name, role) end
---@generic T : WindowInfoSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Create(index, class, undo) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowInfoSettings
function WindowInfoSettingsCollect:Append(class, undo, count) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Acquire(class, undo) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
---@deprecated use "Acquire" instead
function WindowInfoSettingsCollect:Aquire(class, undo) end
---@generic T : WindowInfoSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowInfoSettings
function WindowInfoSettingsCollect:Insert(index, class, undo, count) end
---@generic T : WindowInfoSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowInfoSettings
function WindowInfoSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "AppearanceMode", property_value: InfoAppearanceMode)
---@overload fun(property_name: "NoteLabelColor", property_value: UColor)
---@overload fun(property_name: "RememberedTab", property_value: WindowInfoTab)
---@overload fun(property_name: "LinkMode", property_value: InfoLinkMode)
---@overload fun(property_name: "WindowMode", property_value: InfoWindowMode)
---@overload fun(property_name: "AppearanceMode", property_value: InfoAppearanceMode)
---@overload fun(property_name: "LinkMode", property_value: InfoLinkMode)
---@overload fun(property_name: "WindowMode", property_value: InfoWindowMode)
---@overload fun(property_name: "NoteLabelColor", property_value: UColor)
---@overload fun(property_name: "RememberedTab", property_value: WindowInfoTab)
---@overload fun(property_name: "UseTargetAppearance"|"EditMode"|"ShowEmpty"|"ShowTabs"|"AutoScroll", property_value: YesNo|boolean)
---@overload fun(property_name: "ChangeWindowMode"|"ChangeLinkMode", property_value: fun(text: string) : boolean)
---@overload fun(property_name: "TargetName"|"ChildName", property_value: string)
function WindowInfoSettingsCollect:WindowMode(property_name, property_value) end