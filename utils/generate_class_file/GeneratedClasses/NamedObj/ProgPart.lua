---@meta

---@class ProgPart: NamedObj
---@field Part integer
local ProgPart = {
    Part="0"
}
---@return "ProgPart"
function ProgPart:GetClass() end
---@return "Recipe"
function ProgPart:GetChildClass() end
---@return Programmer
function ProgPart:Parent() end
---@param index integer
---@return Recipe
function ProgPart:Ptr(index) end
---@return Recipe[]
function ProgPart:Children() end
---@return Recipe?
function ProgPart:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Part", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Part", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Recipe
function ProgPart:Get(name, role) end
---@overload fun(index: integer, class: "Recipe", undo: Undo?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?): Recipe
function ProgPart:Create(index, class, undo) end
---@overload fun(class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(class: nil, undo: Undo?, count: integer?): Recipe
function ProgPart:Append(class, undo, count) end
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Recipe
function ProgPart:Acquire(class, undo) end
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Recipe
---@deprecated use "Acquire" instead
function ProgPart:Aquire(class, undo) end
---@overload fun(index: integer, class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Recipe
function ProgPart:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Recipe
function ProgPart:Find(name, class) end
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Object
function ProgPart:FindRecursive(name, class) end
