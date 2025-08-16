---@meta

---@class BaseItemButtons: UIObjectFake
local BaseItemButtons = {}
---@return "BaseItemButtons"
function BaseItemButtons:GetClass() end
---@return "BaseItemButton"
function BaseItemButtons:GetChildClass() end
---@generic T : BaseItemButtons
---@param class `T`
---@return boolean
function BaseItemButtons:IsClass(class) end
---@param index integer
---@return BaseItemButton
function BaseItemButtons:Ptr(index) end
---@return BaseItemButton[]
function BaseItemButtons:Children() end
---@return BaseItemButton?
function BaseItemButtons:CurrentChild() end
---@overload fun(name: integer, role: nil): BaseItemButton
function BaseItemButtons:Get(name, role) end
---@generic T : BaseItemButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Create(index, class, undo) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): BaseItemButton
function BaseItemButtons:Append(class, undo, count) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Acquire(class, undo) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BaseItemButton
---@deprecated use "Acquire" instead
function BaseItemButtons:Aquire(class, undo) end
---@generic T : BaseItemButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BaseItemButton
function BaseItemButtons:Insert(index, class, undo, count) end
---@generic T : BaseItemButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BaseItemButton
function BaseItemButtons:Find(class, undo) end
---@overload fun(property_name: "AutoTexture", property_value: YesNo|boolean)
---@overload fun(property_name: "SelectedTextColor"|"ProgIndicatorBackColor"|"EmptyBackColor"|"EmptyTextColor"|"SelectedIconColor"|"SelectedBackColor", property_value: Color)
---@overload fun(property_name: "SelectedIcon"|"DeselectedIcon"|"ProgIndicator"|"PinnedIcon", property_value: Texture)
---@overload fun(property_name: "AutoTexture", property_value: YesNo|boolean)
function BaseItemButtons:SetChildren(property_name, property_value) end