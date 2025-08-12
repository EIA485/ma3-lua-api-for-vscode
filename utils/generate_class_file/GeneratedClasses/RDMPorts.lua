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
---@overload fun(index: integer, class: "RDMPort", undo: Undo?): RDMPort
---@overload fun(index: integer, class: nil, undo: Undo?): RDMPort
function RDMPorts:Create(index, class, undo) end
---@overload fun(class: "RDMPort", undo: Undo?, count: integer?): RDMPort
---@overload fun(class: nil, undo: Undo?, count: integer?): RDMPort
function RDMPorts:Append(class, undo, count) end
---@overload fun(class: "RDMPort", undo: Undo?): RDMPort
---@overload fun(class: nil, undo: Undo?): RDMPort
function RDMPorts:Acquire(class, undo) end
---@overload fun(class: "RDMPort", undo: Undo?): RDMPort
---@overload fun(class: nil, undo: Undo?): RDMPort
---@deprecated use "Acquire" instead
function RDMPorts:Aquire(class, undo) end
---@overload fun(index: integer, class: "RDMPort", undo: Undo?, count: integer?): RDMPort
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RDMPort
function RDMPorts:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RDMPort"): RDMPort
---@overload fun(name: string, class: nil): RDMPort
function RDMPorts:Find(name, class) end
---@overload fun(name: string, class: "RDMPort"): RDMPort
---@overload fun(name: string, class: nil): Object
function RDMPorts:FindRecursive(name, class) end
