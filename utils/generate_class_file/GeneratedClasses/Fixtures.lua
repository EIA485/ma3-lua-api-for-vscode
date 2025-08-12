---@meta

---@class Fixtures: Object Your description here.
local Fixtures = {}
---@return "Fixtures"
function Fixtures:GetClass() end
---@return "Fixture"
function Fixtures:GetChildClass() end
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
---@overload fun(name: string, class: nil): Object
function Fixtures:FindRecursive(name, class) end
