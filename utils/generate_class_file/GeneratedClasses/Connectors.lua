---@meta

---@class Connectors: Object
local Connectors = {}
---@return "Connectors"
function Connectors:GetClass() end
---@return "Connector"
function Connectors:GetChildClass() end
---@return PhysicalDescriptions
function Connectors:Parent() end
---@param index integer
---@return Connector
function Connectors:Ptr(index) end
---@return Connector[]
function Connectors:Children() end
---@return Connector?
function Connectors:CurrentChild() end
---@overload fun(name: integer, role: nil): Connector
function Connectors:Get(name, role) end
---@overload fun(index: integer, class: "Connector", undo: Undo?): Connector
---@overload fun(index: integer, class: nil, undo: Undo?): Connector
function Connectors:Create(index, class, undo) end
---@overload fun(class: "Connector", undo: Undo?, count: integer?): Connector
---@overload fun(class: nil, undo: Undo?, count: integer?): Connector
function Connectors:Append(class, undo, count) end
---@overload fun(class: "Connector", undo: Undo?): Connector
---@overload fun(class: nil, undo: Undo?): Connector
function Connectors:Acquire(class, undo) end
---@overload fun(class: "Connector", undo: Undo?): Connector
---@overload fun(class: nil, undo: Undo?): Connector
---@deprecated use "Acquire" instead
function Connectors:Aquire(class, undo) end
---@overload fun(index: integer, class: "Connector", undo: Undo?, count: integer?): Connector
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Connector
function Connectors:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Connector"): Connector
---@overload fun(name: string, class: nil): Connector
function Connectors:Find(name, class) end
---@overload fun(name: string, class: "Connector"): Connector
---@overload fun(name: string, class: nil): Object
function Connectors:FindRecursive(name, class) end
