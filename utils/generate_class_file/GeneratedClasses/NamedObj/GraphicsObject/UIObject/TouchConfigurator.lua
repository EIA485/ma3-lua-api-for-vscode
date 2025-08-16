---@meta

---@class TouchConfigurator: UIObject
local TouchConfigurator = {}
---@return "TouchConfigurator"
function TouchConfigurator:GetClass() end
---@return "TouchMonitor"
function TouchConfigurator:GetChildClass() end
---@generic T : TouchConfigurator
---@param class `T`
---@return boolean
function TouchConfigurator:IsClass(class) end
---@param index integer
---@return TouchMonitor
function TouchConfigurator:Ptr(index) end
---@return TouchMonitor[]
function TouchConfigurator:Children() end
---@return TouchMonitor?
function TouchConfigurator:CurrentChild() end
---@overload fun(name: integer, role: nil): TouchMonitor
function TouchConfigurator:Get(name, role) end
---@generic T : TouchMonitor
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TouchMonitor
function TouchConfigurator:Create(index, class, undo) end
---@generic T : TouchMonitor
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TouchMonitor
function TouchConfigurator:Append(class, undo, count) end
---@generic T : TouchMonitor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TouchMonitor
function TouchConfigurator:Acquire(class, undo) end
---@generic T : TouchMonitor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TouchMonitor
---@deprecated use "Acquire" instead
function TouchConfigurator:Aquire(class, undo) end
---@generic T : TouchMonitor
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TouchMonitor
function TouchConfigurator:Insert(index, class, undo, count) end
---@generic T : TouchMonitor
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TouchMonitor
function TouchConfigurator:Find(class, undo) end
---@overload fun(property_name: "MapClicked", property_value: fun(str: string) : boolean)
---@overload fun(property_name: "MapClicked", property_value: fun(str: string) : boolean)
function TouchConfigurator:SetChildren(property_name, property_value) end