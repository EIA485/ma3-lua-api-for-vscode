---@meta

---@class NotificationsGridScroller: UILayoutGrid
local NotificationsGridScroller = {}
---@return "NotificationsGridScroller"
function NotificationsGridScroller:GetClass() end
---@return "NotificationsWrapper"
function NotificationsGridScroller:GetChildClass() end
---@return ScrollBox
function NotificationsGridScroller:Parent() end
---@param index integer
---@return NotificationsWrapper
function NotificationsGridScroller:Ptr(index) end
---@return NotificationsWrapper[]
function NotificationsGridScroller:Children() end
---@return NotificationsWrapper?
function NotificationsGridScroller:CurrentChild() end
---@overload fun(name: integer, role: nil): NotificationsWrapper
function NotificationsGridScroller:Get(name, role) end
---@generic T : NotificationsWrapper
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): NotificationsWrapper
function NotificationsGridScroller:Create(index, class, undo) end
---@generic T : NotificationsWrapper
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): NotificationsWrapper
function NotificationsGridScroller:Append(class, undo, count) end
---@generic T : NotificationsWrapper
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NotificationsWrapper
function NotificationsGridScroller:Acquire(class, undo) end
---@generic T : NotificationsWrapper
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NotificationsWrapper
---@deprecated use "Acquire" instead
function NotificationsGridScroller:Aquire(class, undo) end
---@generic T : NotificationsWrapper
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NotificationsWrapper
function NotificationsGridScroller:Insert(index, class, undo, count) end
---@generic T : NotificationsWrapper
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NotificationsWrapper
function NotificationsGridScroller:Find(class, undo) end