---@meta

---@class PhysicalProperties: Object
local PhysicalProperties = {}
---@return "PhysicalProperties"
function PhysicalProperties:GetClass() end
---@return "PhysicalPropertiesData"
function PhysicalProperties:GetChildClass() end
---@return PhysicalDescriptions
function PhysicalProperties:Parent() end
---@param index integer
---@return PhysicalPropertiesData
function PhysicalProperties:Ptr(index) end
---@return PhysicalPropertiesData[]
function PhysicalProperties:Children() end
---@return PhysicalPropertiesData?
function PhysicalProperties:CurrentChild() end
---@overload fun(name: integer, role: nil): PhysicalPropertiesData
function PhysicalProperties:Get(name, role) end
---@overload fun(index: integer, class: "PhysicalPropertiesData", undo: Undo?): PhysicalPropertiesData
---@overload fun(index: integer, class: nil, undo: Undo?): PhysicalPropertiesData
function PhysicalProperties:Create(index, class, undo) end
---@overload fun(class: "PhysicalPropertiesData", undo: Undo?, count: integer?): PhysicalPropertiesData
---@overload fun(class: nil, undo: Undo?, count: integer?): PhysicalPropertiesData
function PhysicalProperties:Append(class, undo, count) end
---@overload fun(class: "PhysicalPropertiesData", undo: Undo?): PhysicalPropertiesData
---@overload fun(class: nil, undo: Undo?): PhysicalPropertiesData
function PhysicalProperties:Acquire(class, undo) end
---@overload fun(class: "PhysicalPropertiesData", undo: Undo?): PhysicalPropertiesData
---@overload fun(class: nil, undo: Undo?): PhysicalPropertiesData
---@deprecated use "Acquire" instead
function PhysicalProperties:Aquire(class, undo) end
---@overload fun(index: integer, class: "PhysicalPropertiesData", undo: Undo?, count: integer?): PhysicalPropertiesData
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PhysicalPropertiesData
function PhysicalProperties:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PhysicalPropertiesData"): PhysicalPropertiesData
---@overload fun(name: string, class: nil): PhysicalPropertiesData
function PhysicalProperties:Find(name, class) end
---@overload fun(name: string, class: "PhysicalPropertiesData"): PhysicalPropertiesData
---@overload fun(name: string, class: nil): Object
function PhysicalProperties:FindRecursive(name, class) end
