---@meta

---@class DCRemotes: RemoteCollect
local DCRemotes = {}
---@return "DCRemotes"
function DCRemotes:GetClass() end
---@return "DCRemote"
function DCRemotes:GetChildClass() end
---@param index integer
---@return DCRemote
function DCRemotes:Ptr(index) end
---@return DCRemote[]
function DCRemotes:Children() end
---@return DCRemote?
function DCRemotes:CurrentChild() end
---@overload fun(name: integer, role: nil): DCRemote
function DCRemotes:Get(name, role) end
---@overload fun(index: integer, class: "DCRemote", undo: Undo?): DCRemote
---@overload fun(index: integer, class: nil, undo: Undo?): DCRemote
function DCRemotes:Create(index, class, undo) end
---@overload fun(class: "DCRemote", undo: Undo?, count: integer?): DCRemote
---@overload fun(class: nil, undo: Undo?, count: integer?): DCRemote
function DCRemotes:Append(class, undo, count) end
---@overload fun(class: "DCRemote", undo: Undo?): DCRemote
---@overload fun(class: nil, undo: Undo?): DCRemote
function DCRemotes:Acquire(class, undo) end
---@overload fun(class: "DCRemote", undo: Undo?): DCRemote
---@overload fun(class: nil, undo: Undo?): DCRemote
---@deprecated use "Acquire" instead
function DCRemotes:Aquire(class, undo) end
---@overload fun(index: integer, class: "DCRemote", undo: Undo?, count: integer?): DCRemote
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DCRemote
function DCRemotes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DCRemote"): DCRemote
---@overload fun(name: string, class: nil): DCRemote
function DCRemotes:Find(name, class) end
---@overload fun(name: string, class: "DCRemote"): DCRemote
---@overload fun(name: string, class: nil): Object
function DCRemotes:FindRecursive(name, class) end
