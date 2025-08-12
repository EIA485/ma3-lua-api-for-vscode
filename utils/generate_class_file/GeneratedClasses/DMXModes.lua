---@meta

---@class DMXModes: Object Container for all modes of a fixture type.
local DMXModes = {}
---@return "DMXModes"
function DMXModes:GetClass() end
---@return "DMXMode"
function DMXModes:GetChildClass() end
---@return FixtureType
function DMXModes:Parent() end
---@param index integer
---@return DMXMode
function DMXModes:Ptr(index) end
---@return DMXMode[]
function DMXModes:Children() end
---@return DMXMode?
function DMXModes:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXMode
function DMXModes:Get(name, role) end
---@overload fun(index: integer, class: "DMXMode", undo: Undo?): DMXMode
---@overload fun(index: integer, class: nil, undo: Undo?): DMXMode
function DMXModes:Create(index, class, undo) end
---@overload fun(class: "DMXMode", undo: Undo?, count: integer?): DMXMode
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXMode
function DMXModes:Append(class, undo, count) end
---@overload fun(class: "DMXMode", undo: Undo?): DMXMode
---@overload fun(class: nil, undo: Undo?): DMXMode
function DMXModes:Acquire(class, undo) end
---@overload fun(class: "DMXMode", undo: Undo?): DMXMode
---@overload fun(class: nil, undo: Undo?): DMXMode
---@deprecated use "Acquire" instead
function DMXModes:Aquire(class, undo) end
---@overload fun(index: integer, class: "DMXMode", undo: Undo?, count: integer?): DMXMode
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXMode
function DMXModes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DMXMode"): DMXMode
---@overload fun(name: string, class: nil): DMXMode
function DMXModes:Find(name, class) end
---@overload fun(name: string, class: "DMXMode"): DMXMode
---@overload fun(name: string, class: nil): Object
function DMXModes:FindRecursive(name, class) end
