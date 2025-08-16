---@meta

---@class Fixtures: Object Your description here.
local Fixtures = {}
---@return "Fixtures"
function Fixtures:GetClass() end
---@return "Fixture"
function Fixtures:GetChildClass() end
---@generic T : Fixtures
---@param class `T`
---@return boolean
function Fixtures:IsClass(class) end
---@return Stage
function Fixtures:Parent() end
---@param index integer
---@return Fixture
function Fixtures:Ptr(index) end
---@return Fixture[]
function Fixtures:Children() end
---@return Fixture?
function Fixtures:CurrentChild() end
---@overload fun(name: integer, role: nil): Fixture
function Fixtures:Get(name, role) end
function Fixtures:Create(index, class, undo) end
function Fixtures:Append(class, undo, count) end
function Fixtures:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function Fixtures:Aquire(class, undo) end
function Fixtures:Insert(index, class, undo, count) end
function Fixtures:Find(class, undo) end
function Fixtures:SetChildren(property_name, property_value) end
function Fixtures:SetChildrenRecursive(property_name, property_value) end