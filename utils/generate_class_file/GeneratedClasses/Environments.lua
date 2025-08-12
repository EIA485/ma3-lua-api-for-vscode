---@meta

---@class Environments: Object
---@field ActiveEnvironment integer
local Environments = {
    ActiveEnvironment="0"
}
---@return "Environments"
function Environments:GetClass() end
---@return "UserEnvironment"
function Environments:GetChildClass() end
---@return UserProfile
function Environments:Parent() end
---@param index integer
---@return UserEnvironment
function Environments:Ptr(index) end
---@return UserEnvironment[]
function Environments:Children() end
---@return UserEnvironment?
function Environments:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"ActiveEnvironment", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ActiveEnvironment", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UserEnvironment
function Environments:Get(name, role) end
---@overload fun(index: integer, class: "UserEnvironment", undo: Undo?): UserEnvironment
---@overload fun(index: integer, class: nil, undo: Undo?): UserEnvironment
function Environments:Create(index, class, undo) end
---@overload fun(class: "UserEnvironment", undo: Undo?, count: integer?): UserEnvironment
---@overload fun(class: nil, undo: Undo?, count: integer?): UserEnvironment
function Environments:Append(class, undo, count) end
---@overload fun(class: "UserEnvironment", undo: Undo?): UserEnvironment
---@overload fun(class: nil, undo: Undo?): UserEnvironment
function Environments:Acquire(class, undo) end
---@overload fun(class: "UserEnvironment", undo: Undo?): UserEnvironment
---@overload fun(class: nil, undo: Undo?): UserEnvironment
---@deprecated use "Acquire" instead
function Environments:Aquire(class, undo) end
---@overload fun(index: integer, class: "UserEnvironment", undo: Undo?, count: integer?): UserEnvironment
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserEnvironment
function Environments:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UserEnvironment"): UserEnvironment
---@overload fun(name: string, class: nil): UserEnvironment
function Environments:Find(name, class) end
---@overload fun(name: string, class: "UserEnvironment"): UserEnvironment
---@overload fun(name: string, class: nil): Object
function Environments:FindRecursive(name, class) end
