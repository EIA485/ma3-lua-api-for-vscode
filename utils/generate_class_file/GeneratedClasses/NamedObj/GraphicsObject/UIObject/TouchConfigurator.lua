---@meta

---@class TouchConfigurator: UIObject
local TouchConfigurator = {}
---@return "TouchConfigurator"
function TouchConfigurator:GetClass() end
---@return "TouchMonitor"
function TouchConfigurator:GetChildClass() end
---@param index integer
---@return TouchMonitor
function TouchConfigurator:Ptr(index) end
---@return TouchMonitor[]
function TouchConfigurator:Children() end
---@return TouchMonitor?
function TouchConfigurator:CurrentChild() end
---@overload fun(name: integer, role: nil): TouchMonitor
function TouchConfigurator:Get(name, role) end
---@overload fun(index: integer, class: "TouchMonitor", undo: Undo?): TouchMonitor
---@overload fun(index: integer, class: nil, undo: Undo?): TouchMonitor
function TouchConfigurator:Create(index, class, undo) end
---@overload fun(class: "TouchMonitor", undo: Undo?, count: integer?): TouchMonitor
---@overload fun(class: nil, undo: Undo?, count: integer?): TouchMonitor
function TouchConfigurator:Append(class, undo, count) end
---@overload fun(class: "TouchMonitor", undo: Undo?): TouchMonitor
---@overload fun(class: nil, undo: Undo?): TouchMonitor
function TouchConfigurator:Acquire(class, undo) end
---@overload fun(class: "TouchMonitor", undo: Undo?): TouchMonitor
---@overload fun(class: nil, undo: Undo?): TouchMonitor
---@deprecated use "Acquire" instead
function TouchConfigurator:Aquire(class, undo) end
---@overload fun(index: integer, class: "TouchMonitor", undo: Undo?, count: integer?): TouchMonitor
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TouchMonitor
function TouchConfigurator:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TouchMonitor"): TouchMonitor
---@overload fun(name: string, class: nil): TouchMonitor
function TouchConfigurator:Find(name, class) end
---@overload fun(name: string, class: "TouchMonitor"): TouchMonitor
---@overload fun(name: string, class: nil): Object
function TouchConfigurator:FindRecursive(name, class) end
