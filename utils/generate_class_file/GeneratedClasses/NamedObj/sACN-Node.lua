---@meta

---@class sACNNode: NamedObj
local sACNNode = {}
---@return "sACN-Node"
function sACNNode:GetClass() end
---@return "Page-Nr"
function sACNNode:GetChildClass() end
---@generic T : sACNNode
---@param class `T`
---@return boolean
function sACNNode:IsClass(class) end
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
---@overload fun(class: "Page-Nr", undo: Undo?): PageNr
---@overload fun(class: nil, undo: Undo?): PageNr
function sACNNode:Find(class, undo) end
---@overload fun(property_name: "UniverseList", property_value: string)
---@overload fun(property_name: "UniverseList", property_value: string)
function sACNNode:SetChildren(property_name, property_value) end