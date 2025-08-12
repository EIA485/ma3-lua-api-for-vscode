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
---@overload fun(index: integer, class: "InfoNotesWrapper", undo: Undo?): InfoNotesWrapper
---@overload fun(index: integer, class: nil, undo: Undo?): InfoNotesWrapper
function InfoNotesGridScroller:Create(index, class, undo) end
---@overload fun(class: "InfoNotesWrapper", undo: Undo?, count: integer?): InfoNotesWrapper
---@overload fun(class: nil, undo: Undo?, count: integer?): InfoNotesWrapper
function InfoNotesGridScroller:Append(class, undo, count) end
---@overload fun(class: "InfoNotesWrapper", undo: Undo?): InfoNotesWrapper
---@overload fun(class: nil, undo: Undo?): InfoNotesWrapper
function InfoNotesGridScroller:Acquire(class, undo) end
---@overload fun(class: "InfoNotesWrapper", undo: Undo?): InfoNotesWrapper
---@overload fun(class: nil, undo: Undo?): InfoNotesWrapper
---@deprecated use "Acquire" instead
function InfoNotesGridScroller:Aquire(class, undo) end
---@overload fun(index: integer, class: "InfoNotesWrapper", undo: Undo?, count: integer?): InfoNotesWrapper
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): InfoNotesWrapper
function InfoNotesGridScroller:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "InfoNotesWrapper"): InfoNotesWrapper
---@overload fun(name: string, class: nil): InfoNotesWrapper
function InfoNotesGridScroller:Find(name, class) end
---@overload fun(name: string, class: "InfoNotesWrapper"): InfoNotesWrapper
---@overload fun(name: string, class: nil): Object
function InfoNotesGridScroller:FindRecursive(name, class) end
