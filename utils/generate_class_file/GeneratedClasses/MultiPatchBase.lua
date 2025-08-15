---@meta

---@class MultiPatchBase: Object
local MultiPatchBase = {}
---@return "MultiPatchBase"
function MultiPatchBase:GetClass() end
---@return "Fixture"
function MultiPatchBase:GetChildClass() end
---@generic T : MultiPatchBase
---@param class `T`
---@return boolean
function MultiPatchBase:IsClass(class) end
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
function MultiPatchBase:Create(index, class, undo) end
function MultiPatchBase:Append(class, undo, count) end
function MultiPatchBase:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function MultiPatchBase:Aquire(class, undo) end
function MultiPatchBase:Insert(index, class, undo, count) end
function MultiPatchBase:Find(class, undo) end
function MultiPatchBase:Color(property_name, property_value) end
function MultiPatchBase:Color(property_name, property_value) end
function MultiPatchBase:SetChildrenRecursive(property_name, property_value) end