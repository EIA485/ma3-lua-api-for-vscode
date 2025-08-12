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
---@overload fun(index: integer, class: "NotificationsWrapper", undo: Undo?): NotificationsWrapper
---@overload fun(index: integer, class: nil, undo: Undo?): NotificationsWrapper
function NotificationsGridScroller:Create(index, class, undo) end
---@overload fun(class: "NotificationsWrapper", undo: Undo?, count: integer?): NotificationsWrapper
---@overload fun(class: nil, undo: Undo?, count: integer?): NotificationsWrapper
function NotificationsGridScroller:Append(class, undo, count) end
---@overload fun(class: "NotificationsWrapper", undo: Undo?): NotificationsWrapper
---@overload fun(class: nil, undo: Undo?): NotificationsWrapper
function NotificationsGridScroller:Acquire(class, undo) end
---@overload fun(class: "NotificationsWrapper", undo: Undo?): NotificationsWrapper
---@overload fun(class: nil, undo: Undo?): NotificationsWrapper
---@deprecated use "Acquire" instead
function NotificationsGridScroller:Aquire(class, undo) end
---@overload fun(index: integer, class: "NotificationsWrapper", undo: Undo?, count: integer?): NotificationsWrapper
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NotificationsWrapper
function NotificationsGridScroller:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "NotificationsWrapper"): NotificationsWrapper
---@overload fun(name: string, class: nil): NotificationsWrapper
function NotificationsGridScroller:Find(name, class) end
---@overload fun(name: string, class: "NotificationsWrapper"): NotificationsWrapper
---@overload fun(name: string, class: nil): Object
function NotificationsGridScroller:FindRecursive(name, class) end
