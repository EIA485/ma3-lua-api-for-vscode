---@meta

---@class RDMPorts: Object RDM ports
local RDMPorts = {}
---@return "RDMPorts"
function RDMPorts:GetClass() end
---@return "RDMPort"
function RDMPorts:GetChildClass() end
---@return RDMData
function RDMPorts:Parent() end
---@param index integer
---@return RDMPort
function RDMPorts:Ptr(index) end
---@return RDMPort[]
function RDMPorts:Children() end
---@return RDMPort?
function RDMPorts:CurrentChild() end
---@overload fun(name: integer, role: nil): RDMPort
function RDMPorts:Get(name, role) end
---@generic T : RDMPort
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RDMPort
function RDMPorts:Create(index, class, undo) end
---@generic T : RDMPort
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMPort
function RDMPorts:Append(class, undo, count) end
---@generic T : RDMPort
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMPort
function RDMPorts:Acquire(class, undo) end
---@generic T : RDMPort
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMPort
---@deprecated use "Acquire" instead
function RDMPorts:Aquire(class, undo) end
---@generic T : RDMPort
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMPort
function RDMPorts:Insert(index, class, undo, count) end
---@generic T : RDMPort
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RDMPort
function RDMPorts:Find(class, undo) end