---@meta

---@class EncoderDefinitions: Object
local EncoderDefinitions = {}
---@return "EncoderDefinitions"
function EncoderDefinitions:GetClass() end
---@return "EncoderDefinition"
function EncoderDefinitions:GetChildClass() end
---@return HardwareConfiguration
function EncoderDefinitions:Parent() end
---@param index integer
---@return EncoderDefinition
function EncoderDefinitions:Ptr(index) end
---@return EncoderDefinition[]
function EncoderDefinitions:Children() end
---@return EncoderDefinition?
function EncoderDefinitions:CurrentChild() end
---@overload fun(name: integer, role: nil): EncoderDefinition
function EncoderDefinitions:Get(name, role) end
---@overload fun(index: integer, class: "EncoderDefinition", undo: Undo?): EncoderDefinition
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderDefinition
function EncoderDefinitions:Create(index, class, undo) end
---@overload fun(class: "EncoderDefinition", undo: Undo?, count: integer?): EncoderDefinition
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderDefinition
function EncoderDefinitions:Append(class, undo, count) end
---@overload fun(class: "EncoderDefinition", undo: Undo?): EncoderDefinition
---@overload fun(class: nil, undo: Undo?): EncoderDefinition
function EncoderDefinitions:Acquire(class, undo) end
---@overload fun(class: "EncoderDefinition", undo: Undo?): EncoderDefinition
---@overload fun(class: nil, undo: Undo?): EncoderDefinition
---@deprecated use "Acquire" instead
function EncoderDefinitions:Aquire(class, undo) end
---@overload fun(index: integer, class: "EncoderDefinition", undo: Undo?, count: integer?): EncoderDefinition
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderDefinition
function EncoderDefinitions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "EncoderDefinition"): EncoderDefinition
---@overload fun(name: string, class: nil): EncoderDefinition
function EncoderDefinitions:Find(name, class) end
---@overload fun(name: string, class: "EncoderDefinition"): EncoderDefinition
---@overload fun(name: string, class: nil): Object
function EncoderDefinitions:FindRecursive(name, class) end
