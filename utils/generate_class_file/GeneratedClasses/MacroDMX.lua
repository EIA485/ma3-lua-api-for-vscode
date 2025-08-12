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
---@overload fun(index: integer, class: "MacroDMXStep", undo: Undo?): MacroDMXStep
---@overload fun(index: integer, class: nil, undo: Undo?): MacroDMXStep
function MacroDMX:Create(index, class, undo) end
---@overload fun(class: "MacroDMXStep", undo: Undo?, count: integer?): MacroDMXStep
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroDMXStep
function MacroDMX:Append(class, undo, count) end
---@overload fun(class: "MacroDMXStep", undo: Undo?): MacroDMXStep
---@overload fun(class: nil, undo: Undo?): MacroDMXStep
function MacroDMX:Acquire(class, undo) end
---@overload fun(class: "MacroDMXStep", undo: Undo?): MacroDMXStep
---@overload fun(class: nil, undo: Undo?): MacroDMXStep
---@deprecated use "Acquire" instead
function MacroDMX:Aquire(class, undo) end
---@overload fun(index: integer, class: "MacroDMXStep", undo: Undo?, count: integer?): MacroDMXStep
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroDMXStep
function MacroDMX:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MacroDMXStep"): MacroDMXStep
---@overload fun(name: string, class: nil): MacroDMXStep
function MacroDMX:Find(name, class) end
---@overload fun(name: string, class: "MacroDMXStep"): MacroDMXStep
---@overload fun(name: string, class: nil): Object
function MacroDMX:FindRecursive(name, class) end
