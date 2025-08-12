---@meta

---@class sACNDiscoveryCollect: Object
local sACNDiscoveryCollect = {}
---@return "sACNDiscoveryCollect"
function sACNDiscoveryCollect:GetClass() end
---@return "sACNNode"
function sACNDiscoveryCollect:GetChildClass() end
---@return sACN
function sACNDiscoveryCollect:Parent() end
---@param index integer
---@return sACNNode
function sACNDiscoveryCollect:Ptr(index) end
---@return sACNNode[]
function sACNDiscoveryCollect:Children() end
---@return sACNNode?
function sACNDiscoveryCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): sACNNode
function sACNDiscoveryCollect:Get(name, role) end
---@overload fun(index: integer, class: "sACN-Node", undo: Undo?): sACNNode
---@overload fun(index: integer, class: nil, undo: Undo?): sACNNode
function sACNDiscoveryCollect:Create(index, class, undo) end
---@overload fun(class: "sACN-Node", undo: Undo?, count: integer?): sACNNode
---@overload fun(class: nil, undo: Undo?, count: integer?): sACNNode
function sACNDiscoveryCollect:Append(class, undo, count) end
---@overload fun(class: "sACN-Node", undo: Undo?): sACNNode
---@overload fun(class: nil, undo: Undo?): sACNNode
function sACNDiscoveryCollect:Acquire(class, undo) end
---@overload fun(class: "sACN-Node", undo: Undo?): sACNNode
---@overload fun(class: nil, undo: Undo?): sACNNode
---@deprecated use "Acquire" instead
function sACNDiscoveryCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "sACN-Node", undo: Undo?, count: integer?): sACNNode
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): sACNNode
function sACNDiscoveryCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "sACN-Node"): sACNNode
---@overload fun(name: string, class: nil): sACNNode
function sACNDiscoveryCollect:Find(name, class) end
---@overload fun(name: string, class: "sACN-Node"): sACNNode
---@overload fun(name: string, class: nil): Object
function sACNDiscoveryCollect:FindRecursive(name, class) end
