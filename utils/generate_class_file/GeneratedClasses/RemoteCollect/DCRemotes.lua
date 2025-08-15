---@meta

---@class DCRemotes: RemoteCollect
local DCRemotes = {}
---@return "DCRemotes"
function DCRemotes:GetClass() end
---@return "DCRemote"
function DCRemotes:GetChildClass() end
---@generic T : DCRemotes
---@param class `T`
---@return boolean
function DCRemotes:IsClass(class) end
---@param index integer
---@return DCRemote
function DCRemotes:Ptr(index) end
---@return DCRemote[]
function DCRemotes:Children() end
---@return DCRemote?
function DCRemotes:CurrentChild() end
---@overload fun(name: integer, role: nil): DCRemote
function DCRemotes:Get(name, role) end
---@generic T : DCRemote
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DCRemote
function DCRemotes:Create(index, class, undo) end
---@generic T : DCRemote
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DCRemote
function DCRemotes:Append(class, undo, count) end
---@generic T : DCRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DCRemote
function DCRemotes:Acquire(class, undo) end
---@generic T : DCRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DCRemote
---@deprecated use "Acquire" instead
function DCRemotes:Aquire(class, undo) end
---@generic T : DCRemote
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DCRemote
function DCRemotes:Insert(index, class, undo, count) end
---@generic T : DCRemote
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DCRemote
function DCRemotes:Find(class, undo) end
---@overload fun(property_name: "Signal", property_value: integer)
---@overload fun(property_name: "Signal", property_value: integer)
function DCRemotes:Signal(property_name, property_value) end