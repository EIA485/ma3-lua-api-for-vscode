---@meta

---@class Configurations: GenericPool
local Configurations = {}
---@return "Configurations"
function Configurations:GetClass() end
---@return "Configuration"
function Configurations:GetChildClass() end
---@return Pool
function Configurations:Parent() end
---@param index integer
---@return Configuration
function Configurations:Ptr(index) end
---@return Configuration[]
function Configurations:Children() end
---@return Configuration?
function Configurations:CurrentChild() end
---@overload fun(name: integer, role: nil): Configuration
function Configurations:Get(name, role) end
---@overload fun(index: integer, class: "Configuration", undo: Undo?): Configuration
---@overload fun(index: integer, class: nil, undo: Undo?): Configuration
function Configurations:Create(index, class, undo) end
---@overload fun(class: "Configuration", undo: Undo?, count: integer?): Configuration
---@overload fun(class: nil, undo: Undo?, count: integer?): Configuration
function Configurations:Append(class, undo, count) end
---@overload fun(class: "Configuration", undo: Undo?): Configuration
---@overload fun(class: nil, undo: Undo?): Configuration
function Configurations:Acquire(class, undo) end
---@overload fun(class: "Configuration", undo: Undo?): Configuration
---@overload fun(class: nil, undo: Undo?): Configuration
---@deprecated use "Acquire" instead
function Configurations:Aquire(class, undo) end
---@overload fun(index: integer, class: "Configuration", undo: Undo?, count: integer?): Configuration
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Configuration
function Configurations:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Configuration"): Configuration
---@overload fun(name: string, class: nil): Configuration
function Configurations:Find(name, class) end
---@overload fun(name: string, class: "Configuration"): Configuration
---@overload fun(name: string, class: nil): Object
function Configurations:FindRecursive(name, class) end
