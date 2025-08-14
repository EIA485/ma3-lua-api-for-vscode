---@meta

---@class MacroDMX: Object your description here
local MacroDMX = {}
---@return "MacroDMX"
function MacroDMX:GetClass() end
---@return "MacroDMXStep"
function MacroDMX:GetChildClass() end
---@return FTMacro
function MacroDMX:Parent() end
---@param index integer
---@return MacroDMXStep
function MacroDMX:Ptr(index) end
---@return MacroDMXStep[]
function MacroDMX:Children() end
---@return MacroDMXStep?
function MacroDMX:CurrentChild() end
---@overload fun(name: integer, role: nil): MacroDMXStep
function MacroDMX:Get(name, role) end
---@generic T : MacroDMXStep
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroDMXStep
function MacroDMX:Create(index, class, undo) end
---@generic T : MacroDMXStep
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroDMXStep
function MacroDMX:Append(class, undo, count) end
---@generic T : MacroDMXStep
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXStep
function MacroDMX:Acquire(class, undo) end
---@generic T : MacroDMXStep
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXStep
---@deprecated use "Acquire" instead
function MacroDMX:Aquire(class, undo) end
---@generic T : MacroDMXStep
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroDMXStep
function MacroDMX:Insert(index, class, undo, count) end
---@generic T : MacroDMXStep
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXStep
function MacroDMX:Find(class, undo) end