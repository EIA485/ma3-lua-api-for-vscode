---@meta

---@class InfoNotesGridScroller: UIObject
local InfoNotesGridScroller = {}
---@return "InfoNotesGridScroller"
function InfoNotesGridScroller:GetClass() end
---@return "InfoNotesWrapper"
function InfoNotesGridScroller:GetChildClass() end
---@param index integer
---@return InfoNotesWrapper
function InfoNotesGridScroller:Ptr(index) end
---@return InfoNotesWrapper[]
function InfoNotesGridScroller:Children() end
---@return InfoNotesWrapper?
function InfoNotesGridScroller:CurrentChild() end
---@overload fun(name: integer, role: nil): InfoNotesWrapper
function InfoNotesGridScroller:Get(name, role) end
---@generic T : InfoNotesWrapper
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): InfoNotesWrapper
function InfoNotesGridScroller:Create(index, class, undo) end
---@generic T : InfoNotesWrapper
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): InfoNotesWrapper
function InfoNotesGridScroller:Append(class, undo, count) end
---@generic T : InfoNotesWrapper
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): InfoNotesWrapper
function InfoNotesGridScroller:Acquire(class, undo) end
---@generic T : InfoNotesWrapper
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): InfoNotesWrapper
---@deprecated use "Acquire" instead
function InfoNotesGridScroller:Aquire(class, undo) end
---@generic T : InfoNotesWrapper
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): InfoNotesWrapper
function InfoNotesGridScroller:Insert(index, class, undo, count) end
---@generic T : InfoNotesWrapper
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): InfoNotesWrapper
function InfoNotesGridScroller:Find(class, undo) end