---@meta

---@class CRIGroup: Object
---@field ColorTemperature number
local CRIGroup = {
    ColorTemperature="6000.0"
}
---@return "CRIGroup"
function CRIGroup:GetClass() end
---@return "CRI"
function CRIGroup:GetChildClass() end
---@return CRIs
function CRIGroup:Parent() end
---@param index integer
---@return CRI
function CRIGroup:Ptr(index) end
---@return CRI[]
function CRIGroup:Children() end
---@return CRI?
function CRIGroup:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ColorTemperature", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ColorTemperature", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): CRI
function CRIGroup:Get(name, role) end
---@overload fun(index: integer, class: "CRI", undo: Undo?): CRI
---@overload fun(index: integer, class: nil, undo: Undo?): CRI
function CRIGroup:Create(index, class, undo) end
---@overload fun(class: "CRI", undo: Undo?, count: integer?): CRI
---@overload fun(class: nil, undo: Undo?, count: integer?): CRI
function CRIGroup:Append(class, undo, count) end
---@overload fun(class: "CRI", undo: Undo?): CRI
---@overload fun(class: nil, undo: Undo?): CRI
function CRIGroup:Acquire(class, undo) end
---@overload fun(class: "CRI", undo: Undo?): CRI
---@overload fun(class: nil, undo: Undo?): CRI
---@deprecated use "Acquire" instead
function CRIGroup:Aquire(class, undo) end
---@overload fun(index: integer, class: "CRI", undo: Undo?, count: integer?): CRI
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CRI
function CRIGroup:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "CRI"): CRI
---@overload fun(name: string, class: nil): CRI
function CRIGroup:Find(name, class) end
---@overload fun(name: string, class: "CRI"): CRI
---@overload fun(name: string, class: nil): Object
function CRIGroup:FindRecursive(name, class) end
