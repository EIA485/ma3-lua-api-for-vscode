---@meta

---@class UIGridButtons: UIObjectFake
local UIGridButtons = {}
---@return "UIGridButtons"
function UIGridButtons:GetClass() end
---@return "UIGridButton"
function UIGridButtons:GetChildClass() end
---@generic T : UIGridButtons
---@param class `T`
---@return boolean
function UIGridButtons:IsClass(class) end
---@return UIGridButtonsCollect
function UIGridButtons:Parent() end
---@param index integer
---@return UIGridButton
function UIGridButtons:Ptr(index) end
---@return UIGridButton[]
function UIGridButtons:Children() end
---@return UIGridButton?
function UIGridButtons:CurrentChild() end
---@overload fun(name: integer, role: nil): UIGridButton
function UIGridButtons:Get(name, role) end
---@generic T : UIGridButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UIGridButton
function UIGridButtons:Create(index, class, undo) end
---@generic T : UIGridButton
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UIGridButton
function UIGridButtons:Append(class, undo, count) end
---@generic T : UIGridButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIGridButton
function UIGridButtons:Acquire(class, undo) end
---@generic T : UIGridButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIGridButton
---@deprecated use "Acquire" instead
function UIGridButtons:Aquire(class, undo) end
---@generic T : UIGridButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIGridButton
function UIGridButtons:Insert(index, class, undo, count) end
---@generic T : UIGridButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIGridButton
function UIGridButtons:Find(class, undo) end
---@overload fun(property_name: "ChildFreeIconColor"|"HasSelectedChildrenIconColor"|"HasChildrenIconColor", property_value: Color)
---@overload fun(property_name: "ExpandedIcon"|"CollapsedIcon", property_value: Texture)
function UIGridButtons:SetChildren(property_name, property_value) end