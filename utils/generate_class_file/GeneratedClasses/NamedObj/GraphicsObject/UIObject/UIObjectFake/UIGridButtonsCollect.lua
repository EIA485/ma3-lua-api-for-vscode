---@meta

---@class UIGridButtonsCollect: UIObjectFake
local UIGridButtonsCollect = {}
---@return "UIGridButtonsCollect"
function UIGridButtonsCollect:GetClass() end
---@return "UIGridButtons"
function UIGridButtonsCollect:GetChildClass() end
---@generic T : UIGridButtonsCollect
---@param class `T`
---@return boolean
function UIGridButtonsCollect:IsClass(class) end
---@return UIGridInternals
function UIGridButtonsCollect:Parent() end
---@param index integer
---@return UIGridButtons
function UIGridButtonsCollect:Ptr(index) end
---@return UIGridButtons[]
function UIGridButtonsCollect:Children() end
---@return UIGridButtons?
function UIGridButtonsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): UIGridButtons
function UIGridButtonsCollect:Get(name, role) end
---@generic T : UIGridButtons
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UIGridButtons
function UIGridButtonsCollect:Create(index, class, undo) end
---@generic T : UIGridButtons
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UIGridButtons
function UIGridButtonsCollect:Append(class, undo, count) end
---@generic T : UIGridButtons
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIGridButtons
function UIGridButtonsCollect:Acquire(class, undo) end
---@generic T : UIGridButtons
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIGridButtons
---@deprecated use "Acquire" instead
function UIGridButtonsCollect:Aquire(class, undo) end
---@generic T : UIGridButtons
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIGridButtons
function UIGridButtonsCollect:Insert(index, class, undo, count) end
---@generic T : UIGridButtons
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UIGridButtons
function UIGridButtonsCollect:Find(class, undo) end
function UIGridButtonsCollect:SetChildren(property_name, property_value) end