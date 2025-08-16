---@meta

---@class PhysicalDescriptions: Object
local PhysicalDescriptions = {}
---@return "PhysicalDescriptions"
function PhysicalDescriptions:GetClass() end
---@return "Emitter"
function PhysicalDescriptions:GetChildClass() end
---@generic T : PhysicalDescriptions
---@param class `T`
---@return boolean
function PhysicalDescriptions:IsClass(class) end
---@return FixtureType
function PhysicalDescriptions:Parent() end
---@param index integer
---@return Emitter
function PhysicalDescriptions:Ptr(index) end
---@return Emitter[]
function PhysicalDescriptions:Children() end
---@return Emitter?
function PhysicalDescriptions:CurrentChild() end
---@overload fun(name: integer, role: nil): Emitter
function PhysicalDescriptions:Get(name, role) end
function PhysicalDescriptions:Create(index, class, undo) end
function PhysicalDescriptions:Append(class, undo, count) end
function PhysicalDescriptions:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function PhysicalDescriptions:Aquire(class, undo) end
function PhysicalDescriptions:Insert(index, class, undo, count) end
function PhysicalDescriptions:Find(class, undo) end
function PhysicalDescriptions:SetChildren(property_name, property_value) end
function PhysicalDescriptions:SetChildrenRecursive(property_name, property_value) end