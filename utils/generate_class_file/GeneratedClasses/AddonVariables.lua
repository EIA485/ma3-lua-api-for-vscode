---@meta

---@class AddonVariables: Object
local AddonVariables = {}
---@return "AddonVariables"
function AddonVariables:GetClass() end
---@return "Variables"
function AddonVariables:GetChildClass() end
---@param index integer
---@return Variables
function AddonVariables:Ptr(index) end
---@return Variables[]
function AddonVariables:Children() end
---@return Variables?
function AddonVariables:CurrentChild() end
---@overload fun(name: integer, role: nil): Variables
function AddonVariables:Get(name, role) end
---@overload fun(index: integer, class: "Variables", undo: Undo?): Variables
---@overload fun(index: integer, class: nil, undo: Undo?): Variables
function AddonVariables:Create(index, class, undo) end
---@overload fun(class: "Variables", undo: Undo?, count: integer?): Variables
---@overload fun(class: nil, undo: Undo?, count: integer?): Variables
function AddonVariables:Append(class, undo, count) end
---@overload fun(class: "Variables", undo: Undo?): Variables
---@overload fun(class: nil, undo: Undo?): Variables
function AddonVariables:Acquire(class, undo) end
---@overload fun(class: "Variables", undo: Undo?): Variables
---@overload fun(class: nil, undo: Undo?): Variables
---@deprecated use "Acquire" instead
function AddonVariables:Aquire(class, undo) end
---@overload fun(index: integer, class: "Variables", undo: Undo?, count: integer?): Variables
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Variables
function AddonVariables:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Variables"): Variables
---@overload fun(name: string, class: nil): Variables
function AddonVariables:Find(name, class) end
---@overload fun(name: string, class: "Variables"): Variables
---@overload fun(name: string, class: nil): Object
function AddonVariables:FindRecursive(name, class) end
