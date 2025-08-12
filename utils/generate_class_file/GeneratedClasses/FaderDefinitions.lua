---@meta

---@class FaderDefinitions: Object
local FaderDefinitions = {}
---@return "FaderDefinitions"
function FaderDefinitions:GetClass() end
---@return "FaderDefinition"
function FaderDefinitions:GetChildClass() end
---@return HardwareConfiguration
function FaderDefinitions:Parent() end
---@param index integer
---@return FaderDefinition
function FaderDefinitions:Ptr(index) end
---@return FaderDefinition[]
function FaderDefinitions:Children() end
---@return FaderDefinition?
function FaderDefinitions:CurrentChild() end
---@overload fun(name: integer, role: nil): FaderDefinition
function FaderDefinitions:Get(name, role) end
---@overload fun(index: integer, class: "FaderDefinition", undo: Undo?): FaderDefinition
---@overload fun(index: integer, class: nil, undo: Undo?): FaderDefinition
function FaderDefinitions:Create(index, class, undo) end
---@overload fun(class: "FaderDefinition", undo: Undo?, count: integer?): FaderDefinition
---@overload fun(class: nil, undo: Undo?, count: integer?): FaderDefinition
function FaderDefinitions:Append(class, undo, count) end
---@overload fun(class: "FaderDefinition", undo: Undo?): FaderDefinition
---@overload fun(class: nil, undo: Undo?): FaderDefinition
function FaderDefinitions:Acquire(class, undo) end
---@overload fun(class: "FaderDefinition", undo: Undo?): FaderDefinition
---@overload fun(class: nil, undo: Undo?): FaderDefinition
---@deprecated use "Acquire" instead
function FaderDefinitions:Aquire(class, undo) end
---@overload fun(index: integer, class: "FaderDefinition", undo: Undo?, count: integer?): FaderDefinition
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FaderDefinition
function FaderDefinitions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FaderDefinition"): FaderDefinition
---@overload fun(name: string, class: nil): FaderDefinition
function FaderDefinitions:Find(name, class) end
---@overload fun(name: string, class: "FaderDefinition"): FaderDefinition
---@overload fun(name: string, class: nil): Object
function FaderDefinitions:FindRecursive(name, class) end
