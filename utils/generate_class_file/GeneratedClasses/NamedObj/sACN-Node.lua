---@meta

---@class sACNNode: NamedObj
local sACNNode = {}
---@return "sACNNode"
function sACNNode:GetClass() end
---@return "PageNr"
function sACNNode:GetChildClass() end
---@return sACNDiscoveryCollect
function sACNNode:Parent() end
---@param index integer
---@return PageNr
function sACNNode:Ptr(index) end
---@return PageNr[]
function sACNNode:Children() end
---@return PageNr?
function sACNNode:CurrentChild() end
---@overload fun(name: integer, role: nil): PageNr
function sACNNode:Get(name, role) end
---@overload fun(index: integer, class: "Page-Nr", undo: Undo?): PageNr
---@overload fun(index: integer, class: nil, undo: Undo?): PageNr
function sACNNode:Create(index, class, undo) end
---@overload fun(class: "Page-Nr", undo: Undo?, count: integer?): PageNr
---@overload fun(class: nil, undo: Undo?, count: integer?): PageNr
function sACNNode:Append(class, undo, count) end
---@overload fun(class: "Page-Nr", undo: Undo?): PageNr
---@overload fun(class: nil, undo: Undo?): PageNr
function sACNNode:Acquire(class, undo) end
---@overload fun(class: "Page-Nr", undo: Undo?): PageNr
---@overload fun(class: nil, undo: Undo?): PageNr
---@deprecated use "Acquire" instead
function sACNNode:Aquire(class, undo) end
---@overload fun(index: integer, class: "Page-Nr", undo: Undo?, count: integer?): PageNr
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PageNr
function sACNNode:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Page-Nr"): PageNr
---@overload fun(name: string, class: nil): PageNr
function sACNNode:Find(name, class) end
---@overload fun(name: string, class: "Page-Nr"): PageNr
---@overload fun(name: string, class: nil): Object
function sACNNode:FindRecursive(name, class) end
