---@meta

---@class MultiPatchBase: Object
local MultiPatchBase = {}
---@return "MultiPatchBase"
function MultiPatchBase:GetClass() end
---@return "Fixture"
function MultiPatchBase:GetChildClass() end
---@return Temp
function MultiPatchBase:Parent() end
---@param index integer
---@return Fixture
function MultiPatchBase:Ptr(index) end
---@return Fixture[]
function MultiPatchBase:Children() end
---@return Fixture?
function MultiPatchBase:CurrentChild() end
---@overload fun(name: integer, role: nil): Fixture
function MultiPatchBase:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function MultiPatchBase:FindRecursive(name, class) end
