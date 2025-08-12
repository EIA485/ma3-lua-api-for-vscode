---@meta

---@class CRIs: Object
local CRIs = {}
---@return "CRIs"
function CRIs:GetClass() end
---@return "CRIGroup"
function CRIs:GetChildClass() end
---@return PhysicalDescriptions
function CRIs:Parent() end
---@param index integer
---@return CRIGroup
function CRIs:Ptr(index) end
---@return CRIGroup[]
function CRIs:Children() end
---@return CRIGroup?
function CRIs:CurrentChild() end
---@overload fun(name: integer, role: nil): CRIGroup
function CRIs:Get(name, role) end
---@overload fun(index: integer, class: "CRIGroup", undo: Undo?): CRIGroup
---@overload fun(index: integer, class: nil, undo: Undo?): CRIGroup
function CRIs:Create(index, class, undo) end
---@overload fun(class: "CRIGroup", undo: Undo?, count: integer?): CRIGroup
---@overload fun(class: nil, undo: Undo?, count: integer?): CRIGroup
function CRIs:Append(class, undo, count) end
---@overload fun(class: "CRIGroup", undo: Undo?): CRIGroup
---@overload fun(class: nil, undo: Undo?): CRIGroup
function CRIs:Acquire(class, undo) end
---@overload fun(class: "CRIGroup", undo: Undo?): CRIGroup
---@overload fun(class: nil, undo: Undo?): CRIGroup
---@deprecated use "Acquire" instead
function CRIs:Aquire(class, undo) end
---@overload fun(index: integer, class: "CRIGroup", undo: Undo?, count: integer?): CRIGroup
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CRIGroup
function CRIs:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "CRIGroup"): CRIGroup
---@overload fun(name: string, class: nil): CRIGroup
function CRIs:Find(name, class) end
---@overload fun(name: string, class: "CRIGroup"): CRIGroup
---@overload fun(name: string, class: nil): Object
function CRIs:FindRecursive(name, class) end
