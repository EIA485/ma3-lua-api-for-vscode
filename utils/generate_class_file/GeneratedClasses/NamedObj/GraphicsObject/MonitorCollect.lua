---@meta

---@class MonitorCollect: GraphicsObject A container for monitor objects
local MonitorCollect = {}
---@return "MonitorCollect"
function MonitorCollect:GetClass() end
---@return "Monitor"
function MonitorCollect:GetChildClass() end
---@return GraphicsRoot
function MonitorCollect:Parent() end
---@param index integer
---@return Monitor
function MonitorCollect:Ptr(index) end
---@return Monitor[]
function MonitorCollect:Children() end
---@return Monitor?
function MonitorCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Monitor
function MonitorCollect:Get(name, role) end
---@overload fun(index: integer, class: "Monitor", undo: Undo?): Monitor
---@overload fun(index: integer, class: "Monitor", undo: Undo?): Monitor
---@overload fun(index: integer, class: nil, undo: Undo?): Monitor
function MonitorCollect:Create(index, class, undo) end
---@overload fun(class: "Monitor", undo: Undo?, count: integer?): Monitor
---@overload fun(class: "Monitor", undo: Undo?, count: integer?): Monitor
---@overload fun(class: nil, undo: Undo?, count: integer?): Monitor
function MonitorCollect:Append(class, undo, count) end
---@overload fun(class: "Monitor", undo: Undo?): Monitor
---@overload fun(class: "Monitor", undo: Undo?): Monitor
---@overload fun(class: nil, undo: Undo?): Monitor
function MonitorCollect:Acquire(class, undo) end
---@overload fun(class: "Monitor", undo: Undo?): Monitor
---@overload fun(class: "Monitor", undo: Undo?): Monitor
---@overload fun(class: nil, undo: Undo?): Monitor
---@deprecated use "Acquire" instead
function MonitorCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Monitor", undo: Undo?, count: integer?): Monitor
---@overload fun(index: integer, class: "Monitor", undo: Undo?, count: integer?): Monitor
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Monitor
function MonitorCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Monitor"): Monitor
---@overload fun(name: string, class: "Monitor"): Monitor
---@overload fun(name: string, class: nil): Monitor
function MonitorCollect:Find(name, class) end
---@overload fun(name: string, class: "Monitor"): Monitor
---@overload fun(name: string, class: "Monitor"): Monitor
---@overload fun(name: string, class: nil): Object
function MonitorCollect:FindRecursive(name, class) end
